LOG_FILE=/tmp/mongodb
echo "creat yum repo for mongoDB"

curl -s -o /etc/yum.repos.d/mongodb-org-4.2.repo "https://github.com/deviabhishek/mongodb/blob/main/mongo.repo" &>>$LOG_FILE
echo status = $?

sudo yum install -y repos.d/mongodb-org-4.2.repo
echo status = $?

sudo systemctl enable mongod &>>$LOG_FILE
sudo systemctl start mongod &>>$LOG_FILE

