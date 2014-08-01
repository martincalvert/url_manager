url_manager (Dory - A Domain Manager)
===========

###Description
This is a rails app that is made to manage a large amount domain names. It does this by storing the domain and its pertinent information in a database, currently MySQL, and then uses basic rails crud features to access and manipulate the data.

###Setup Steps (OSX 10.9+)
1. Install the command line tools for OSX. Open terminal and type `gcc` if the tools are not installed it will prompt you to install them.
2. Install rails. In terminal type `sudo gem install rails` this should prompt you to install the rails gem, which will also install many other gems used for rails development.
3. Install Homebrew (you can skip this step if you want to install MySQL a different way, I prefer homebrew for these simple setups). In terminal type 
`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
4. After Homebrew is installed run `brew doctor` in terminal to cleanup and prepare homebrew
5. Now install MySQL by typing `brew install mysql`
6. Now run `bundle` while in the root directory of the app
7. Then run `bundle install` for safe measure in the same location
8. Now create the databases in MySQL by starting the server with `mysql.server start` then log in to the server with `mysql -u root`(this is the stock setting which will be up to you to change, the app is made to work with stock out the box)
9. Now create a database with `create database db_name` by default rails wants to use the project name appended with the appropriate enviroment. I suggest you follow this so you would run `create database url_manager_development` to get it up and running. Exit mysql with `exit`
10. If you made any changes to the user or database name you need to change that in the yaml file in `/config`
11. Now run the migrations with `rake db:migrate`
12. Now you should be ready to run the app, type `rails s`
13. Almost there, go to your browser and navigate to localhost:3000
14. You should now be in the app!

###Version History
**V 1.0** – 7/30/14 – Basic app up and running using MySQL, search is not enabled in this build. 

###Upcoming Additions
* Search page for searching on other columsn - V 2.0
* Load initial data into local JSON and use TableSorter for sort operations - V 2.0
* Search on multiple columns - V2.5



