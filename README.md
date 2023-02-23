# Buildpack NPMRC

🗂️ A buildpack to set the npmrc files content in a subdirectory.

## ⚒️ Configure Buildpack

1. Add the buildpack on the first position to your buildpacks at heroku.

```bash
$ heroku buildpacks:set --index 1 https://github.com/Novaheal/buildpack-npmrc.git
```

2. Set the env vars at heroku

```
 $ heroku config:set NPMRC=registry=https://registry.npmjs.org @<your-organization>:registry=https://npm.pkg.github.com //npm.pkg.githubcom/:_authToken=<your-token>
 $ heroku config:set SUBFOLDER=<your-subfolder>
```
