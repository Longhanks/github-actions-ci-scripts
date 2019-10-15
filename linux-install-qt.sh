apt install -y mesa-common-dev

if [ ! -f /usr/bin/install-qt ]; then
    wget -nv https://github.com/benlau/qtci/raw/master/recipes/install-qt -O /usr/bin/install-qt
    chmod +x /usr/bin/install-qt
    wget -nv https://github.com/benlau/qtci/raw/master/bin/extract-qt-installer -O /usr/bin/extract-qt-installer
    chmod +x /usr/bin/extract-qt-installer
fi

export QT_CI_PACKAGES=qt.qt5.5131.gcc_64
export QT_CI_DOWNLOADER="wget -c -nv -N"
install-qt 5.13.1 /
