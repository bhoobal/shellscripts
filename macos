### mac os profile locations

cat ~/.bash_profile && cat ~/.profile && cat ~/.zshrc

# shell script
Shell script to iterate through a text file and execute command

for reponame in `cat reponames.txt`; do  git clone .; done

- find
		- find / -type d -name '.terragrunt-cache' 2>/dev/null
			- Above one skips permission denied erroes on stderr
		- find .  -type d -name '.terragrunt-cache' 2>/dev/null | xargs rm -rv
- #zip/unzip 
	- tar cf file.tar files  - compress
	- tar xf file.tar - extract
	- tar czf file.tar.gz files - compress gz
	- tar xzf file.tar.g - extract

 ### python

Discover and run unit tests
	python3 -m unittest discover -s ./tests
		-p  // pattern if the test file name doesnt start with test*
	Ex: python3 -m unittest discover -s ./tests/* -p *test.py -v

 ### GitHub Actions

To test locally using act → [https://github.com/nektos/act](https://github.com/nektos/act)

- act -j mvn_ci --container-architecture linux/amd64 -s ARTIFACTORY_USERNAME=bhoobalan.palanivel@[domain.com](http://domain.com/) -s GITHUB_TOKEN=AAAAAAAAA
- act --container-architecture linux/amd64 --input-file ./.github/workflows/ci-maven.yml --list
- act -P ubuntu-latest=nektos/act-environments-ubuntu:22.04 --container-architecture linux/amd64
- act -P ubuntu-18.04=nektos/act-environments-ubuntu:18.04 --container-architecture linux/amd64 workflow_dispatch --list  
    act -P ubuntu-18.04=nektos/act-environments-ubuntu:18.04 --container-architecture linux/amd64 workflow_call --list

### Git Commands
git allows empty commit

git commit --allow-empty -m "Trigger Build to test jenkins update"

git config --get-regexp ^alias.

git config -l

squash - commits

git logline -12 

clear && git log -10 --oneline

  
git rebase -i HEAD~12. # add s / squash for commits to merge , leave one pick in the commit history to merge  
git logline -12. # alias to list logs  
git push origin add-trivy --force. - # force push after squash. git push origin BRANCH-NAME --force  

##### Run sonarqube locally

docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest



### nmap and curl

nmap -p 443 --script ssl-cert [p.p.com](http://m.domain.com/) -v

use debug/verbose to view full trace

curl -v [https://p.domain.com](https://text.pp.domain.com/ "https://dfgdfg.com/") --resolve '[text.pp.domain.com](http://text.pp.domain.com/):443:23.50.57.43'

curl -v [https://api-text.pp.domain.com/reference-service/status](https://api-text.pp.domain.com/reference-service/status "https://api-text.pp.domain.com/reference-service/status") --resolve '[api-text.pp.domain.com](http://api-text.pp.domain.com/):443:23.50.57.43'

Multiple SSH account setup for github

cat ~/.gitconfig

ssh-keygen -t ed25519 -C "bhoobalan.palanivel@domain.com"

Add key reference

cat ~/.ssh/config

  

Host github.com

HostName github.com

IdentityFile ~/.ssh/bp-github

  

Host github.com-enterprise

HostName github.com

IdentityFile ~/.ssh/github_emu_bp

  

Host bitbucket.org

HostName bitbucket.org

IdentityFile ~/.ssh/bp-bbkey

  

copy public key to gitrepo ssh and authorise repo

ssh-ed25519 SDDDGGHJGHGHHJJHJHJJHHJHHJKHKHJHKHK4tDa+2wk bhoobalan.palanivel@domain.com

verify ssh access

ssh -vT git@github.com-enterprise

  

ssh -vT git@github.com

Hi bpalanivel! You've successfully authenticated, but GitHub does not provide shell access.

Clone repo

git clone git@github.com-enterprise:domain/java-demo.git

[remote "origin"]

url = git@github.com-enterprise:domain/java-demo.git

verify

git remote -v && git pull -v

origin git@github.com-enterprise:domain/java-demo.git (fetch)

origin git@github.com-enterprise:domain/java-demo.git (push)

From github.com-enterprise:domain/java-demo

= [up to date] main -> origin/main

Already up to date.

#### JSON - Query parser

- jq '.[] | .name,.full_name' ./Product\ Infrastructure.json --tab
- jq '.[] | .name ' ./Product\ Infrastructure.json
-  jq  '[.[] | {name: .name, slug: .slug, permission: .permission}]' ./directaccessteams.json

[https://stedolan.github.io/jq/manual/#ConditionalsandComparisons](https://stedolan.github.io/jq/manual/#ConditionalsandComparisons)

### Redis - cli cheatsheet

Connect:

  

redis-cli -h cluster.uismnj.euw1.cache.amazonaws.com -p 6379 --tls -a 0SSSSSSSSSSSSSSSSSSSSSSSE

  

AUTH key -a

--tls if encryption in transit enabled

cluster.uismnj.euw1.cache.amazonaws.com:6379> getset environment sidecar

  

"sandbox"

  

cluster.uismnj.euw1.cache.amazonaws.com:6379> get environment

  

"sidecar"

  

cluster.uismnj.euw1.cache.amazonaws.com:6379> keys envi*. or keys *

  

1) "environment"

  

2) "environment3"

  

3) "environment1"

  

Latency check

  

redis-cli -h cluster.uismnj.euw1.cache.amazonaws.com -p 6379 --latency-history --tls -a 0SSSSSSSSSSSSSSSSSSSSSSSE

  

redis-cli -h cluster.uismnj.euw1.cache.amazonaws.com -p 6379 --latency --tls -a 0SSSSSSSSSSSSSSSSSSSSSSSE

  

redis-benchmark -h cluster.uismnj.euw1.cache.amazonaws.com -p 6379 -t set,get -q -n 100 -d 50000 -c 100 --tls -a 0SSSSSSSSSSSSSSSSSSSSSSSE

  

redis-benchmark -h cluster.uismnj.euw1.cache.amazonaws.com -p 6379 -t get -n 100 -d 50000 -c 100 -P 2 --tls -a 0SSSSSSSSSSSSSSSSSSSSSSSE

  

redis-benchmark:

  

-h: Redis host. Default is 127.0.0.1.

-p: Redis port. Default is 6379.

-a: If your server requires authentication, you can use this option to provide the password.

-c: Number of clients (parallel connections) to simulate. Default value is 50.

-n: How many requests to make. Default is 100000.

-d: Data size for SET and GET values, measured in bytes. Default is 3.

-t: Run only a subset of tests. For instance, you can use -t get,set to benchmark the performance of GET and SET commands.

-P: Use pipelining for performance improvements.

-q: Quiet mode, shows only the average requests per second information.



#### Jenkins groovy script

1. Find all field build jobs
    1. Jenkins.instance.getAllItems(Job.class).findAll { Job job ->  
        !job.isBuilding()  
        }.collect { Job job ->  
        //find all matching items and return a list but if null then return an empty list  
        job.builds.findAll
        
        Unknown macro: { Run run -> job.lastBuild.result == Result.FAILURE }
        
        ?: []  
        }.sum().each{ job ->  
        println "$
        
        Unknown macro: {job}
        
        "  
        }
        
2. find all jobs
    1. Jenkins.get().items.each { platformFolder ->  
        platformFolder.items.each { typeFolder ->  
             typeFolder.items.each
        
        Unknown macro: { job ->     println("Job Name}
        
        }  
        }
        
    2. delete all builds in a job
    3. def jobName = "test-remote-job"  
        def job = Jenkins.instance.getItem(jobName)  
        job.getBuilds().findAll { it.number < 100 }.each { it.delete() }


Jobs faild in last 24hours

``` groovy
import hudson.model.Job
import hudson.model.Result
import hudson.model.Run
import java.util.Calendar
import jenkins.model.Jenkins

//24 hours in a day, 3600 seconds in 1 hour, 1000 milliseconds in 1 second
long time_in_millis = 4*3600*1000
Calendar rightNow = Calendar.getInstance()

Jenkins.instance.getAllItems(Job.class).findAll { Job job ->
    !job.isBuilding()
}.collect { Job job ->
    //find all matching items and return a list but if null then return an empty list
    job.builds.findAll { Run run ->
        job.lastBuild.result == Result.FAILURE && ((rightNow.getTimeInMillis() - run.getStartTimeInMillis()) <= time_in_millis)
    } ?: []
}.sum().each{ job -> 
  println "${job}" 
}
