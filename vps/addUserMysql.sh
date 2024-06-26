
read -p "BDD User name ? " BDD_USER_NAME
echo $BDD_USER_NAME;
read -p "BDD password ? " BDD_USER_PASSWORD
echo $BDD_USER_PASSWORD
read -p "ROOT user name ?" ROOT_USER_NAME
echo $ROOT_USER_NAME;

sudo  mysql -u $ROOT_USER_NAME -p <<EOF
  CREATE USER '${BDD_USER_NAME}'@'%' IDENTIFIED BY '${BDD_USER_PASSWORD}';
  GRANT ALL PRIVILEGES ON ${BDD_USER_NAME}.* TO '${BDD_USER_NAME}'@'%' WITH GRANT OPTION;
EOF
