LOG_FILE=/tmp/mongodb
echo "creat yum repo for mongoDB"

vi curl -s -o /etc/yum.repos.d/mongodb.repo "https://github.com/deviabhishek/robo-shelscript.git/mongo.repo" &>>$LOG_FILE
echo status = $?
