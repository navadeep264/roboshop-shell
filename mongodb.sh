cp mongodb.repo  /etc/yum.repos.d/mongodb.repo
dnf install mongodb-org -y

sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf

systemctl enable mongod
systemctl start mongod

