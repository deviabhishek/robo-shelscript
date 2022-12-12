LOG_FILE=/tmp/mongodb
echo "creat yum repo for mongoDB"

vi curl -s -o /etc/yum.repos.d/mongodb-org-4.2.repo "https://github.com/deviabhishek/mongodb/blob/main/mongo.repo" &>>$LOG_FILE
echo status = $?
