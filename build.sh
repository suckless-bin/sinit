sudo apt install musl-tools -y
repo=sinit
echo $repo > repo
git clone --depth=1 https://git.suckless.org/$repo/
cp config.mk  $repo/
cd $repo
make DESTDIR="$PWD/pkg" install
tar -czvf $repo-static.tar.gz -C "$PWD/pkg" .



