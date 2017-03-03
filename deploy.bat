@echo off
echo Welcome to Heroku production deployment
echo Enter loginid and password as phani590@gmail.com/Phani@590
heroku login
git pull
gradlew -Pprod bootRepackage
cd build\libs
heroku war:deploy prod-jhips-test-0.0.1-SNAPSHOT --app prod-jhips-test
