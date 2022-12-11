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