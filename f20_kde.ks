url --url=http://mirror.aarnet.edu.au/pub/fedora/linux/releases/20/Fedora/x86_64/os/

# Include everything repo
repo --name=fedora-everything --baseurl=http://mirror.aarnet.edu.au/pub/fedora/linux/releases/20/Everything/x86_64/os/

auth --useshadow --enablemd5

# root pw: fedora
rootpw --iscrypted $1$I1lI.tL5$qOMpgkPrJIxc2vc29oHh./
# user
user --groups=wheel --name=demo --password=demo --plaintext

# System bootloader configuration
bootloader --location=mbr

firstboot --disable
autostep --autoscreenshot

# Disk
zerombr
clearpart --all --initlabel
autopart

keyboard us
lang en_US
timezone America/New_York
reboot

# Start X on boot
xconfig --startxonboot

%packages --ignoremissing
# base
@base-x
@kde-desktop

# custom
python3
python3-tools
python3-matplotlib
python3-matplotlib-qt4
python3-matplotlib-tk
python3-sympy
%end

%post
set -x -v
exec 1>/root/ks-post.log 2>&1

%end