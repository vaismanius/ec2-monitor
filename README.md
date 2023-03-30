# ec2-monitor

The idea is to have a CI pipeline that will get triggrered every time someone pushes to the git repo.
The triggered build will clone the git repo and build the Python app into a Docker image using Docker-build.
The second pipeline will run the last created docker image every X minutes. 
Thus checking the status of your running EC2 instances periodically, while enabling you to continue developing the ec2-monitor without manually building our app and running it.

EC2 Setup:
- create 3 EC2 instances: Jenkins master, Jenkins agent & a demo EC2 (for monitoring using the app)
- on the agent's host copy your .aws dir (including the AWS CLI credentials and config file)
- Install Python (I used 3.10) on all Jenkins hosts.
- Install Java on the agent host.
