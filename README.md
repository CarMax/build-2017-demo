# build-2017-demo
ARM template reference for the Build 2017 Code Theater demo

This repo contains the ARM templates and parameters.json files used to provision Azure Resources for the sample Microservice in Build 2017 Code Theater demo.

## Deploying Sample Resources
To deploy the sample via the command line (using Azure PowerShell or the Azure CLI), execute the provision script in the tools/scripts folder, with an optional <prefix> parameter. For example:

```
./Demo-ProvisionResourceGroups.ps1 demo1
```

After a successful run, the following three Azure Resource Groups will be created:

```
kmx-demo1-central-shared
kmx-demo1-east
kmx-demo1-west
```
