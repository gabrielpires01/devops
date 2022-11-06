
# DEVOPS - Challenge

Hi, this is a project for a challeng focused on the Devops stack

## How to start
    
First you need to have Docker installed to deploy: 

[Docker site](https://www.docker.com/)


## Deploying

First you need to clone this github repo using:

ps: ("--config core.autocrlf=input") this config is to not have conflicts with filesystems neither from Windows nor Linux

```bash
  git clone git@github.com:gabrielpires01/devops.git --config core.autocrlf=input
```

Move to project file

```bash
  cd devops
```

Now just deploy with:

```bash
  ./deploy.sh
```

## Accessing

Your application should be running on localhost:8000 now
you can view the greeting message from

localhost:8000/greeting