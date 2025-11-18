#!/bin/bash
sudo dnf update -y
sudo dnf install wget -y
cd /tmp/
sudo dnf install -y logrotate
sudo dnf install -y erlang rabbitmq-server

sudo systemctl enable --now rabbitmq-server
sudo firewall-cmd --add-port=5672/tcp
sudo firewall-cmd --runtime-to-permanent

sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl status rabbitmq-server
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo rabbitmqctl set_permissions -p / test ".*" ".*" ".*"
sudo systemctl restart rabbitmq-server
