FROM danielguerra/ubuntu-xrdp

RUN apt-get update -y
RUN wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
RUN echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
RUN apt-get install -y \
    keepass2 \
    screen \
    rsync \
    owncloud-client \
    libreoffice \
    git \
    default-jdk \
    seahorse \
    libgnome-keyring0 \
    slack
#apt-get install ttf-mscorefonts-installer
#https://askubuntu.com/questions/16225/how-can-i-accept-the-microsoft-eula-agreement-for-ttf-mscorefonts-installer
#https://www.pcworld.com/article/2863497/how-to-install-microsoft-fonts-in-linux-office-suites.html
