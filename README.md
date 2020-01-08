
# deploy_hae_booking

- Create docker-compose
    - Create github and clone from github the source 
    - Create Apache and setup domain
    - Create php build (Done)
        - Install ext for php
    - Install composer (create package and install them) (Done)
    - Install mysql (Done)
    - Install adminer (Done)
    - Install mongoDB
    - Install nodejs (Done)
    - Install mail check (waiting)
 - Create -> Remove all container (done)
Manually:
- Download databases and import by mysql; (done)    
- Install generateUuid;  
- Update mail and const to connect mail

# Port
- Mail: http://localhost:8025/
- Database: http://localhost:99/
- App: http://localhost:90/

# Required:
docker-compose down && docker-compose build && docker-compose up -d

Note:

winpty docker exec -ti dockerinstall_hae_booking_1 sh
winpty docker exec -it hae_database  sh -c "cd /docker-entrypoint-initdb.d; mysql -u root --password=root;"  -e 'show databases;'
winpty docker exec -it hae_database mysql -u root --password=root -e 'show databases; use hae_booking_db_new; source < /docker-entrypoint-initdb.d/hae_db.sql;'
Import database
winpty docker exec -it hae_database sh -c 'exec mysql -uroot -proot' < /mysql-dump/hae_db.sql
winpty docker exec hae_booking sh -c "$command"

winpty docker exec -it hae_mongo bash
winpty docker exec -it mongodb bash


winpty docker exec -ti hae_booking_1 sh

winpty docker logs --tail 50 --follow --timestamps dockerinstall_hae_booking_1
 - `winpty docker exec -ti containerid sh` To access container on windows please use the command:
 
winpty docker exec -it mongodb chown -R mongodb:mongodb /data
