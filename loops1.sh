USERID=$(id -u)
LOGS_FOLDER="var/log/shell-script"
LOGS_FILE="var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with rootuser access" | tee -a $LOGS_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER
VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "installing $2 failure" | tee -a $LOGS_FILE
        exit 1
    else 
        echo "installing $2 is success" | tee -a $LOGS_FILE
    fi
}    
for package in $@
do 
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "$package installation"
done
