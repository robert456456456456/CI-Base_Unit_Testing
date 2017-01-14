# CI-Base_Unit_Testing
* In this repository you have 3 files

# File One  docker_cont_update.sh
* This script responsibility of get latest code. Build in docker hub and replaced exist run container in your Docker host.

# File Two reqvester_test.py
* This script responsibility do small unit test. After container replacement end .

# File Three jenkins_job.sh
 * This script responsibility Be inside you jenkins job. He run this two(one and two) scripts together.
 * If job be success it's after unit test be passed . Else job failed.
  your container Down And you have bug in your build.
