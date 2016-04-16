# tar vxjf sublime_text_3_build_3103_x64.tar.bz2
# sudo mv sublime_text_3 /opt/sublime_text
cd sublime/ 
sudo cp * /opt/sublime_text/
cd /opt/sublime_text/
sudo chmod +x sublime_text.desktop
sudo cp sublime_text.desktop /usr/share/applications/

