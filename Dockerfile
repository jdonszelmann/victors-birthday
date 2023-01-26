
FROM archlinux:latest

RUN pacman-key --init; \
    pacman -Sy archlinux-keyring --noconfirm; \
    pacman -Sy archiso --noconfirm; \
    mkdir /repo


COPY packages.x86_64 .

RUN pacman -Sw --noconfirm - < packages.x86_64
RUN cat packages.x86_64 \
| xargs -n1 -I{} find /var/cache/pacman/pkg -name '{}*'\
| grep -v '.sig' | xargs repo-add /repo/repo.db.tar.gz

