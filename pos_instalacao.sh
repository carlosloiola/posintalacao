#!/bin/bash

#Pos - instalação desktop
 dnf -y install fedora-workstation-repositories -y ;
 dnf -y update
#deeping
 dnf -y groupinstall 'Deepin Desktop' ;

#Sublime
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg ;
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo ;
dnf -y install sublime-text ;

#Vscode
rpm --import https://packages.microsoft.com/keys/microsoft.asc ;
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' ;
dnf check-update ;
dnf -y install code ;

#remmina #Vagrant
dnf -y install remmina clipgrab putty vagrant filezilla ;

#asbru

#telegram
dnf copr enable rommon/telegram ;
dnf -y install telegram-desktop ;

#firefox

#googlechrome
dnf config-manager --set-enabled google-chrome ;
dnf -y install google-chrome-stable ;

#Googlemusic

#Dbeaver
rpm -ivh https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm

#Oh My Bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"


#095EZrUP8VY32s1UNFXV
