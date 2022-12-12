LOG_FILE=/tmp/mongodb

echo "setting mongo Db Repo"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo &>>$LOG_FILE
echo status - $?

echo "install mongo DB service"
yum install -y mongodb-org &>>$LOG_FILE
systemctl enable mongod &>>$LOG_FILE
systemctl start mongod &>>$LOG_FILE
echo status - $?



echo "update mongo  DB listen add"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongodb.conf
echo status - $?

echo "starting mongoDB"
systemctl enable mongo &>>$LOG_FILE
systemctl restart mongo &>>$LOG_FILE
echo status - $?
