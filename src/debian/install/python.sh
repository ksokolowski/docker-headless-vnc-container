#!/usr/bin/env bash
set -e

echo "Install Python system packages"
apt-get install -y python3 python3-dev python3-pip python3-tk python3-venv 
apt-get clean -y

echo "Install Python pip dependencies"

export VIRTUAL_ENV=/opt/venv
python3 -m venv $VIRTUAL_ENV
export PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
pip install -U pip
pip install -r $INST_SCRIPTS/requirements.txt

