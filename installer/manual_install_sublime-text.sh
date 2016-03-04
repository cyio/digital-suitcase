tar vxjf sublime_text_3_build_3103_x64.tar.bz2
sudo mv sublime_text_3 /opt/sublime_text
cd setting/sublime/ 
sudo cibsublime-imfix.so /opt/sublime_text/
sudo chmod +x sublime_text.desktop
sudo cp sublime_text.desktop /usr/share/applications/

