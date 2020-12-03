# i3

## Installation

sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt install i3-gaps

## Tools

sudo apt install scrot
sudo apt install imagemagick
sudo apt install feh
sudo apt install arandr
sudo apt install pavucontrol
sudo apt install compton
sudo apt install polybar

## Fix cursor size

echo 'Xcursor.size: 24' | sudo tee -a /etc/X11/XResources/x11-common

## Copy configs

cp -r ./i3/i3lock/ ~/.config/
cp -r ./i3/polybar/ ~/.config/
cp ./i3/compton.conf ~/.config/
