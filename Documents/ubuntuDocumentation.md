# Travis CI Example

To demonstrate TravisCI functionality, we have created a GitHub repository with an example use of the TravisCI pipeline. Follow the guide below to setup the TravisCI example. You should have already created a GitHub account if you are following this Documentation (if not refer to information above).

1. Log into your personal GitHub account
2. Navigate to https://github.com/SIUE-DevOps/TestingProject_Go
3. Click on the Fork Button at the top of the TestingProject_Go Repository
 * You should now see a copy of TestingProject_Go opened in your personal GitHub Account

## GitHub and TravisCI

TravisCI requires some preperation work that is required on your personal GitHub account. 

1. Link GitHub and TravisCI  
 * Go to https://travis-ci.org/ and Sign in with your GitHub credentials.

2. Turn on TravisCI for the forked Test Repository  
 * You should see sliders next to all of the repositories on your GitHub account on the main Travis CI Setup Page. Select the slider next to the TestingProject_Go repository that you forked from the SIUE DevOps GitHub account to turn on TravisCI for that repository.

## Testing TravisCI from Your Vagrantbox

Now that TravisCI is setup on the GitHub repository that we will be using to push code to, lets now test this from within your previously setup Vagrantbox.

### Log into your Vagrantbox  
 * Navigate on the command line to the location on your host where you have downloaded and created your Vagrantbox.

For Mac/Linux:
 * Execute the command `vagrant ssh`  

For Windows:
 * Open Virtualbox
 * Select the DevOps Virtual Machine
 * Log in using 'vagrant' as the user and password


### Clone the TestingProject_Go Repository to your Vagrantbox  
Replace YOURGITHUBUSERNAMEHERE in the command below with your GitHub Account name. This will alone the clone command to pull the files from the forked repository that is now on your personal GitHub Account.  

 * `git clone https://github.com/YOURGITHUBUSERNAMEHERE/TestingProject_Go.git`  

You now should have the files from the forked repository on your local Vagrantbox.  

### Make Changes  
The TravisCI Pipeline that we have created for this example is using the programming language GoLang. You will find two files in your directory that have a .go extenstion. These are GoLang files. You will be working with the file name `Average.go`. The other GoLang file is the test file that TravisCI will run to test upon the `Average.go` file that we will be working with in this example.  

To show that TravisCI is testing to ensure that `Average.go` is programmatically correct, we are going to make a change to the code that should be flagged as a problem. This shows that TravisCI will check all committed code to ensure it is valid against the Test Cases that are setup within the test file. For this example we are just going to break the syntax, and watch what TravisCI will do.

1. Open the file for editing  
 * `vim Average.go`

2. Make a change to break the syntax  
How to use VIM can be found at: https://vim.rtorr.com/  

 * Comment out a portion of the code. For example, add `//` in front of the return statement.  
 * Write and Quit Vim

3. Stage the Changes to prepare for Committing to Git  
 * `git add -A`

4. Commit the Changes  
 * `git commit -m "Commented out code to test TravisCI" `

5. Push Changes to GitHub  
 * `git push origin master`  

It will ask for your GitHub credentials. Enter this information to proceed.

### Check TravisCI
When we pushed the code to your GitHub account, that automattically triggered a TravisCI test to run on the code that was committed. This test should take a couple minutes to complete.

* On your host machine, navigate to https://travis-ci.org/  

Once on the TravisCI homepage, you should now see that the commit that we pushed failed the TravisCI test that we setup. This is what we expected! TravisCI caught the syntax error that was in our code. If you look at the bottom of the TravisCI output, you will see that it calls out the missing return statement that we commented out. 

### Fix the Code, and Recommit  

Follow the steps again, starting from the Make Changes section, but this time removing the `//` that we added. This should fix the code, and when pushed to GitHub, the GoLang file should now pass the TravisCI test.

### Create a Pull Request  

For our tracking of these tests, please create a pull request with the SIUE DevOps page.

1. On your GitHub Account, Navigate to the forked TestingProject_Go repository. 
2. Click on the `New pull request` button
3. Enter a Name for the Pull Request
4. In the comments please enter your SIUE E-ID, Class, and Section

