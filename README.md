Softwares we need to install:
1)Java8 with env path

2)Node js (npm comes along with it)

3)Yeoman

4)Git

5)Heroku
=============
1)Install Java 8 from the Oracle website.

2)Whether you choose to use Maven or Gradle, you normally don’t have to install anything, as JHipster will automatically install the Maven Wrapper or the Gradle Wrapper for you.
If you don’t want to use those wrappers, go to the official Maven website or Gradle website to do your own installation.

3)Install Git from git-scm.com.

3) Install Node.js from the Node.js website (https://nodejs.org/en/ prefer an LTS version). This will also install npm, which is the node package manager we are using in the next commands.
(Recommended) Update NPM: npm install -g npm

4)Install Yeoman: npm install -g yo


5) Install JHipster: npm install -g generator-jhipster(code generator)
There are around 3500 code generator tools. Jhipster is one of the popular tool.

============

Creating an Jhipster application:
1)mkdir myapplication(your application name)

Go to that directory:

2)cd myapplication or your application /

3)  generate your application, type:
execute this command and create the project by following the questions 
 $ yo jhipster
 
 
 =======================
 Integrate it with IDE:
 
 Import this project into Eclipse. No need to configure any servers.If gradle you have to add required eclipse plugins currently it is Buildship gradle integration(elephant icon)
 
 To run the application :
 if you are using Maven then execute the cmd :  $ mvnw  (for backend)
 if you are using Gradle then execute the cmd :  $ gradlew  (for backend)
 
 To make client up and running execute these commands: $ npm install and $ npm start
 
 =====================
 
 Depending upon the DB you select you might probably need a local DB server installation for local testing.
 
 Currently we tried PostGresSQL. To install in your machine visit this link(Check the below note before installing) https://www.enterprisedb.com/downloads/postgres-postgresql-downloads#windows
 
 After succesfull installation click Start(windows) button -> click PostGresql folder -> click Pgadmin4--> click on servers -->databases  ->right click create database
 
 Note: 
 1)While installing it will ask for a location dont let it installed in "ProgramFiles" instead create a new folder in any drive and point to it.
 Eg: C:\Satya\PostGresSQL(I used this location on my machine)
 2)Remember your password you specify during installation(By default username would be "postgres")
 
 =====================
 To use an existing project on bitbucket to get hands on default Jhipster generated project:
 
 clone this location using git: git clone https://satyaghanta@bitbucket.org/satyaghanta/prodjhipstest.git  (master branch)
 
 After cloning: 
 change it to git branch using this command (branch exists on bitbucket, probably you need to create bit bucket account)
 "git checkout prodjhpstestbranch1"
 
 Import the project to eclipse as gradle project and to connect to DB go to "src/main/resources/config/application-dev.yml"
 change the following lines at line # 28
  url: jdbc:postgresql://localhost:5432/(your database name which you created aboe)
        username: postgres
        password: (your password mentioned during installation)
 
 
 ===========================
 Heroku:cloud deployment
 
 Signup on Heroku : https://id.heroku.com/login
 Download the Heroku client at https://devcenter.heroku.com/articles/getting-started-with-jruby#set-up
 click the "Download the Heroku client"
 This will let you to use the Heroku commands in your commnad prompt.
 

 Execute this command:
 
 $ heroku login
 
 enter your credenntials.
 
 Using Yo and Jhipster we can deploy using this command 
 $ yo jhipster:heroku
 
 
 
 But to push it to production it is a good idea to maintain our code in some repository system. Git is ideal for it:
 
 Using Git:
 Create a new repository by logging into github, which will create a git url which points to the git remote location like below
 https://satyaghanta@bitbucket.org/satyaghanta/prodjhipstest.git
 
 ============================
 Some usefull git commands to work in local
 
# initialize the your local repository with Git
# for the current directory
$ git init

# add all files to the index of the Git repository or also know as staging
$ git add .

# commit your file to the local repository
$ git commit -m "Initial commit"

#Add local repo to Remote using the above url

$  git remote add origin https://satyaghanta@bitbucket.org/satyaghanta/prodjhipstest.git

Then push your chnages to remote which creates a default branch which is the master also the central repo for your local repo.

$ git push origin master

You should not work on this master. To make changes in your local you have to create a branch. 
So create a branch:
Create new branch
"master" is the default branch
# syntax: git branch <name> 
$ git branch testappgitbranch

Switch to branch:
$ git checkout <branch name>

and you can make changes and you can commit and push code 

Later switch to Git Master:

$ git checkout master

$ git pull -->to get the latest code

then
$ git checkout <branch name>

$ git merge master



 
 
 
 
 
 
 
 

