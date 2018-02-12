#!/bin/bash

webDriversDir="webDriversDir"
chromeDriver="$webDriversDir/chromeDriver.zip"
geckoDriver="$webDriversDir/geckoDriver.zip"

rm -rf "$webDriversDir"
mkdir -p "$webDriversDir"



wget -O "$chromeDriver" "https://chromedriver.storage.googleapis.com/2.35/chromedriver_linux64.zip"
wget -O "$geckoDriver" "https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-linux64.tar.gz"

unzip -o -a -d "/home/$USER/bin" "$chromeDriver"
tar xvf "$geckoDriver" -C "/home/$USER/bin"