#!/bin/bash

# Download TA-Lib
wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xzvf ta-lib-0.4.0-src.tar.gz
cd ta-lib

# Compile and install
./configure --prefix=/usr
make
sudo make install

# Install the Python wrapper
pip install TA-Lib

# Go back to the main directory
cd ../

# Install other Python dependencies
pip install -r requirements.txt
