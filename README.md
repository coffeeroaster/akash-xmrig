# Mine Monero with xmrig on [ Akash ](https://akash.network)  

This project's goal is to use xmrig on Akash. Akash is a crypto project that allows data centers the ability to rent underutilized compute capacity in the form of a decentralized kubernetes service akin to AWS, Azure, etc.

XMRig [ XMRig ] is high performance crypto mining platform for Monero. This is particularly challenging to work with cloud infrastructure as it can require extensive CPU / memory resources. 




# Buy me a coffee to keep the work going

| | |
--- | --- 
|akash:|`akash1k07dv0wcjej4e4a5z9dg3c6yvvf9mcnz0sacp9`|
|monero:| `88z2xaJaRPVc5VXtE3CArxeAkqSQV8aA4EhswR8pqfY3CghQfaD7nYsLvmcnXuHj1TYDeJaGvyyyW9XyX6ka7BLzQ7ypmqJ`|

# Getting started

First, get some `$AKT` tokens. CoinGecko has a list of [exchanges](https://www.coingecko.com/en/coins/akash-network). I have personally used [Gate.io ]( https://www.gate.io/ ). Although AscendX (Bitmax) appears to have much more volume. Additional exchanges are in the works from what I understand. You will need at least 5 for escrow. 

## Setup Akash environment.
* [Official Akash documemtation] https://docs.akash.network/guides/deploy
* [Best Getting started link] https://github.com/tombeynon/akash-deploy

# Status and profitability

## potential profit
After some tweaking, this deployment was able to obtain **3200H/S**. According to Monero mining calculators, this should result in about 0.03 XMR ( ~ $13 ) for a single deployment.

## Cost of operations

This sample deployment was accepted at 11uAKT per block. At the average cost of a block every 6.5 seconds, this results in a cost of:

```
seconds/month  = 3600×24×30   = 2592000
blocks / month = 2592000 / 6.5 = 398769
uAKT / month    = 398769 * 11 = 4386459
== 4.07 AKT  (or ~ $22.00 / month)
```
At this point, this is not profitable. However with additional tweaking this may be in the future.

# Deploying this on Akash -- 
* This assumes that you have installed akash in `$HOME/bin/akash`
* Read through MAKEFILE-README.md ( Note this was liberally copied from  https://github.com/tombeynon/akash-deploy. Thanks for the excellent guide!
* Broadly speaking you will need to:

## update config.yml
Update env: USER with your XMRIG username (Your monero address)
update URL with the mining pool of your choice.

##  Create an akash address 
``` 
make address
echo "export AKASH_ADDRESS=**address** " >> env.sh
``` 

** Fund `AKASH_ADDRESS` with at least 5 AKT
** create a deployment (you can use deploy.yml) as an example
```
# Need to do this once
make create_certificate
```
```
make create_deployment
make list_bid
```
### accept a bid
```
make create_lease PROVIDER=**provider** DSEQ=**dseq**
```
### push the manifest
```
make send_manifest PROVIDER=**provider** DSEQ=**dseq**
```
### Read logs
```
make lease_logs PROVIDER=**provider** DSEQ=**dseq**
```
