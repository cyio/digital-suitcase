## 使用我的sublime配置文件
### Windows

```bash
cd "%appdata%\Sublime Text 3\Packages\"
rmdir /s/q User
cmd /c mklink User "b:\User\Sublime Text 3\Packages\User" /j
```
跨平台同步扩展目录，会引起部分扩展出错（需对应平台重装）。
根据[Syncing - Package Control](https://packagecontrol.io/docs/syncing)的建议，只要同步`User`目录并安装`Package Control`即可，

```
cd b:\User\Sublime Text 3\Packages\User\
git 
```
### Linux

```bash
cd ~/.config/sublime-text-3
rm -rf Installed\ Packages
rm Packages/User/Package\ Control.sublime-settings
rm Packages/User/Preferences.sublime-settings
git clone https://git.oschina.net/cyio/sublime3-setting.git
cp -R sublime3-setting/* .
```

Windows下的配置路径  
```
"%appdata%\Sublime Text 3\Packages\"
```

安装sublime text 3（PPA或到官网下载deb包）
```bash
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
```
解决中文输入问题
```bash
cd /opt/sublime_text
sudo touch sublime_imfix.c
sudo gedit sublime_imfix.c
```
然后把以下内容粘贴进去并且保存
```
/*
sublime-imfix.c
Use LD_PRELOAD to interpose some function to fix sublime input method support for linux.
By Cjacker Huang <jianzhong.huang at i-soft.com.cn>

gcc -shared -o libsublime-imfix.so sublime_imfix.c `pkg-config --libs --cflags gtk+-2.0` -fPIC
LD_PRELOAD=./libsublime-imfix.so sublime_text
*/
#include <gtk/gtk.h>
#include <gdk/gdkx.h>
typedef GdkSegment GdkRegionBox;

struct _GdkRegion
{
long size;
long numRects;
GdkRegionBox *rects;
GdkRegionBox extents;
};

GtkIMContext *local_context;

void
gdk_region_get_clipbox (const GdkRegion *region,
GdkRectangle *rectangle)
{
g_return_if_fail (region != NULL);
g_return_if_fail (rectangle != NULL);

rectangle->x = region->extents.x1;
rectangle->y = region->extents.y1;
rectangle->width = region->extents.x2 - region->extents.x1;
rectangle->height = region->extents.y2 - region->extents.y1;
GdkRectangle rect;
rect.x = rectangle->x;
rect.y = rectangle->y;
rect.width = 0;
rect.height = rectangle->height; 
//The caret width is 2; 
//Maybe sometimes we will make a mistake, but for most of the time, it should be the caret.
if(rectangle->width == 2 && GTK_IS_IM_CONTEXT(local_context)) {
gtk_im_context_set_cursor_location(local_context, rectangle);
}
}

//this is needed, for example, if you input something in file dialog and return back the edit area
//context will lost, so here we set it again.

static GdkFilterReturn event_filter (GdkXEvent *xevent, GdkEvent *event, gpointer im_context)
{
XEvent *xev = (XEvent *)xevent;
if(xev->type == KeyRelease && GTK_IS_IM_CONTEXT(im_context)) {
GdkWindow * win = g_object_get_data(G_OBJECT(im_context),"window");
if(GDK_IS_WINDOW(win))
gtk_im_context_set_client_window(im_context, win);
}
return GDK_FILTER_CONTINUE;
}

void gtk_im_context_set_client_window (GtkIMContext *context,
GdkWindow *window)
{
GtkIMContextClass *klass;
g_return_if_fail (GTK_IS_IM_CONTEXT (context));
klass = GTK_IM_CONTEXT_GET_CLASS (context);
if (klass->set_client_window)
klass->set_client_window (context, window);

if(!GDK_IS_WINDOW (window))
return;
g_object_set_data(G_OBJECT(context),"window",window);
int width = gdk_window_get_width(window);
int height = gdk_window_get_height(window);
if(width != 0 && height !=0) {
gtk_im_context_focus_in(context);
local_context = context;
}
gdk_window_add_filter (window, event_filter, context); 
}
```
再执行：
```bash
sudo apt-get install build-essential libgtk2.0-dev
sudo gcc -shared -o libsublime-imfix.so sublime_imfix.c `pkg-config --libs --cflags gtk+-2.0` -fPIC
```
再编辑sublime快捷方式
```bash
sudo gedit /usr/share/applications/sublime_text.desktop
```
把以下内容替换原来内容并且保存
```
[Desktop Entry]
Version=1.0
Type=Application
Name=Sublime Text
GenericName=Text Editor
Comment=Sophisticated text editor for code, markup and prose
Exec=bash -c 'LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so /opt/sublime_text/sublime_text' %F
Terminal=false
MimeType=text/plain;
Icon=sublime-text
Categories=TextEditor;Development;Utility;
StartupNotify=true
Actions=Window;Document;

X-Desktop-File-Install-Version=0.22

[Desktop Action Window]
Name=New Window
Exec=bash -c 'LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so /opt/sublime_text/sublime_text' -n
OnlyShowIn=Unity;

[Desktop Action Document]
Name=New File
Exec=bash -c 'LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so /opt/sublime_text/sublime_text' --command new_file
OnlyShowIn=Unity;
```

