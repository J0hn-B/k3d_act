# How to run GitHub Actions workflows locally?

At the time of writting the most preffered method is [nektos/act](https://github.com/nektos/act)  
The problem is, Act is a great tool but it is not perfect, not yet.  
The second problem is, there is strong possibility you will need to migrate from Github Actions
to something new in the next 24/36 months.

What you need is to avoid a vendor lock-in by using the vendor-specific tools/language they provide.
The goal is to run the same configuration locally and in Github Actions with zero changes and been able to migrate on another tool of choice in the future without re-writting everything.

**Do this:** ![image](images/bash.png)
**Not this:** ![image](images/github_actions.png)

# Run GitHub Actions workflows locally
