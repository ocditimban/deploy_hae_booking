=======
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
    - Install mail check
 - Create -> Remove all container (done)
Manually:
- Download databases and import by mysql;    
- Install generateUuid;
- Update mail and const to connect mail


Required:
docker-compose down && docker-compose build && docker-compose up -d

Note:

winpty docker exec -ti dockerinstall_hae_booking_1 sh


winpty docker exec -ti dockerinstall_db_1 sh
 - `winpty docker exec -ti containerid sh` To access container on windows please use the command: