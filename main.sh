#!/bin/bash

# Get the files
git clone https://github.com/rickthackeray/ip-calculator


# Build frontend
cd ip-calculator/frontend
npm install
npm run build
npm install -g serve

# Build backend
cd ../backend
pip install -r requirements.txt

cd ../..
./frontend.sh & ./backend.sh && fg