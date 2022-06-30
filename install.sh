#!/bin/bash
mkdir actions-runner;
cd actions-runner;
curl -o actions-runner-linux-x64-2.294.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.294.0/actions-runner-linux-x64-2.294.0.tar.gz;
echo "a19a09f4eda5716e5d48ba86b6b78fc014880c5619b9dba4a059eaf65e131780  actions-runner-linux-x64-2.294.0.tar.gz" | shasum -a 256 -c;
tar xzf ./actions-runner-linux-x64-2.294.0.tar.gz;
./config.sh --url https://github.com/over-network/discord-system --token AQVCKDBLSUJDNFI2O2Q57ALCXW65E;
sudo apt install screen;
screen -S runner bash run.sh
