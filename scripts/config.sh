
des=../products/HAEBooking;
cp -rf $des/.env.example $des/.env
echo "APP_URL=http://portal.haegroup.com" >> $des/.env
sed -i -e 's/MYSQL_DB_HOST=localhost/MYSQL_DB_HOST=db/g' $des/.env
sed -i -e 's/MYSQL_DB_USERNAME=homestead/MYSQL_DB_USERNAME=root/g' $des/.env
sed -i -e 's/MYSQL_DB_PASSWORD=secret/MYSQL_DB_PASSWORD=root/g' $des/.env
sed -i -e 's/MYSQL_DB_HOST_WRITE=localhost/MYSQL_DB_HOST_WRITE=db/g' $des/.env
sed -i -e 's/PAYABLES/#PAYABLES/g' $des/.env
# config mail
sed -i -e 's/MAIL_DRIVER=log/MAIL_DRIVER=smtp/g' $des/.env
sed -i -e 's/MAIL_HOST=smtp.mailtrap.io/MAIL_HOST=mailhog/g' $des/.env
sed -i -e 's/MAIL_PORT=2525/MAIL_PORT=1025/g' $des/.env

#    read -p "-----Do you want to re-import the database (it will take a lot of time)? (y/n)" yn
#    case $yn in
#        [Yy]* )
#          # import the database
#          ./execute/database.sh
#          break;;
#        [Nn]* ) exit;;
#    esac

# generate key, migrate and run composer
./execute/haebooking.sh