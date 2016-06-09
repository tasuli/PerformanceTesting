#!/usr/bin/env bash
sudo apt-get update
echo "Installing Java 7.."
sudo apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
echo "Install java 7"
sudo apt-get install oracle-java7-installer
echo "Installing Apache.."
sudo apt-get install -y apache2
echo "Installing Tomcat.."
sudo apt-get install -y tomcat7
echo "Setting environment variables for Java 7.."
sudo apt-get install -y oracle-java7-set-default
echo "set up h2 database"
wget http://repo2.maven.org/maven2/com/h2database/h2/1.3.176/h2-1.3.176.jar
sudo cp /vagrant/test.h2.db /root
sudo java -cp h2-1.3.176.jar org.h2.tools.Server -webAllowOthers &
echo "copy pizza.war"
sudo cp /vagrant/pizza.war /var/lib/tomcat7/webapps/



