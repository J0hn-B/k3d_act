# How to run GitHub Actions workflows locally?

At the time of writing the most preferred method is [nektos/act](https://github.com/nektos/act)  
Act is a great tool but it is not perfect, not yet.  
Bear in mind, there is strong possibility you will plan to migrate from GitHub Actions
to something new in the next 24/36 months.

What you need is to avoid a vendor lock-in by using the vendor-specific tools/language they provide.
The goal is to run the same configuration locally and in GitHub Actions with zero changes and been able to migrate on another tool of choice in the future without re-writing everything.

**Do this:** ![image](images/bash.png)
**Not this:** ![image](images/github_actions.png)

## Run GitHub Actions workflows locally

I am sure you know how to write a script to build your application.
Lets build a cluster to deploy and test it.  
```act -r``` will deploy the cluster the first time, will update the cluster every time you change your code.

![image](images/act_.gif)
