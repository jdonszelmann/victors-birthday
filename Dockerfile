
FROM archlinux:latest

RUN pacman-key --init; \
    pacman -Sy archlinux-keyring --noconfirm; \
    pacman -S --needed archiso base-devel sudo git --noconfirm; \
    mkdir /repo


COPY packages.x86_64 .

RUN useradd builduser -m;\
    passwd -d builduser;\
    printf 'builduser ALL=(ALL) ALL\n' | tee -a /etc/sudoers;\
    mkdir work; chown builduser:builduser work; cd work; \
    sudo -u builduser git clone https://aur.archlinux.org/multimc-bin.git; \
    cd multimc-bin; \
    sudo -u builduser makepkg -s --noconfirm; \
    ls -la ./multimc*;\
    cp ./multimc* /repo;\
    ls -la /repo; \
    cp ./multimc* /var/cache/pacman/pkg/;\
    repo-add /repo/repo.db.tar.gz /var/cache/pacman/pkg/multimc*.tar.zst; \
    cd ..; \
    rm -rf multimc-bin


RUN pacman -Sw --noconfirm - < packages.x86_64

RUN ls -la /repo

RUN ls /var/cache/pacman/pkg \
| xargs -n 1 -I{} find /var/cache/pacman/pkg -name '{}' \
| grep -v '.sig' | grep -v '.part'



# RUN ls /var/cache/pacman/pkg \
# | xargs -n 1 -I{} find /var/cache/pacman/pkg -name '{}' \
# | grep -v '.sig' | grep -v '.part' \
# | xargs repo-add /repo/repo.db.tar.gz

RUN cat packages.x86_64 \
| xargs -n1 -I{} find /var/cache/pacman/pkg -name '{}*'\
| grep -v '.sig' | xargs repo-add /repo/repo.db.tar.gz


