sudo yum install nginx -y
sudo amazon-linux-extras install nginx1
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
sudo yum install firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --zone=public --permanent --add-service=https
firewall-cmd --reload
ip addr
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv frontend-main/static/* .
mv frontend-main/localhost.conf /etc/nginx/default.d/roboshop.conf
systemctl restart nginx