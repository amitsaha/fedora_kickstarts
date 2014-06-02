virt-install --connect qemu:///system \
    --location=http://download.fedoraproject.org/pub/fedora/linux/releases/20/Fedora/x86_64/os/\
    --initrd-inject=f20_kde.ks --extra-args=ks=file:/f20_kde.ks \
    --name=fedora-20-python-edu --network=network=default,mac=52:54:00:c6:73:9e \
    --ram=2048 --vcpus=2 \
    --disk /var/lib/libvirt/images/fedora-20-python-edu.img,size=20
