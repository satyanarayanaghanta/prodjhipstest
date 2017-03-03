@echo off
echo Welcome to Heroku production deployment!!!
echo ####Enter loginid and password as phani590@gmail.com/Phani@590
heroku login
echo #### Successfully logged into Heroku ####
git pull origin master
echo #### Pulled changes from Git Master ####
call gradlew -Pprod bootRepackage
echo #### Succesfully prepared war and started deploying to Heroku cloud ####
cd build\libs
echo #### Starting deployment ####
call heroku war:deploy prod-jhips-test-0.0.1-SNAPSHOT.war --app prod-jhips-test
echo #### Succefully deployed war into Heroku cloud ####
heroku open --app prod-jhips-test
echo #### check browser to see the application ####
pause