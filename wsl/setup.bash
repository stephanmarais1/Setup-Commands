wsl --install -d archlinux
#add user
useradd -m stephan
passwd stephan

#add password for root
wsl -u root
passwd
#while were here, update
pacman -Syu

#set default user in wsl.conf 
#in file explorer open \\wsl$\<DistroName>\etc\wsl.conf
#add:
[user]
default=stephan


#install sudo for new user
#open in root to install sudo 
wsl -u root
pacman -S sudo
#add user to wheel group
usermod -aG wheel stephan

EDITOR=nano
visudo
#remove the comment after line:
#Uncomment to allow members of group wheel to execute any command
#save the file

# test that it worked
su - stephan
sudo pacman -Syu
# If the command runs without an error about the user not being in the sudoers file, the configuration is successful. 

#init the keyring
sudo pacman-key --init
#And also perform the initial configuration of the keys with the:
sudo pacman-key --populate
sudo pacman -Sy archlinux-keyring
sudo pacman -Syu


# we-re ready for dev environment setup
sudo pacman -Syu
