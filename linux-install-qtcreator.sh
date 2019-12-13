if [ ! -f /usr/bin/install-qt ]; then
    wget -nv https://github.com/benlau/qtci/raw/master/recipes/install-qt -O /usr/bin/install-qt
    chmod +x /usr/bin/install-qt
    wget -nv https://github.com/benlau/qtci/raw/master/bin/extract-qt-installer -O /usr/bin/extract-qt-installer
    chmod +x /usr/bin/extract-qt-installer
fi

mkdir -p /opt/qtcreator
wget -nv https://download.qt.io/official_releases/qtcreator/4.11/4.11.0/qt-creator-opensource-linux-x86_64-4.11.0.run
extract-qt-installer qt-creator-opensource-linux-x86_64-4.11.0.run /opt/qtcreator
rm qt-creator-opensource-linux-x86_64-4.11.0.run
