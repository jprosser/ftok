#!/bin/sh

python3 -m venv v36
. v36/bin/activate

pip install --upgrade pip
pip install -r requirements.txt
