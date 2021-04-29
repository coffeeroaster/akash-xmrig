# Mine Monero with xmrig on [ Akash ](https://akash.network)  

This project's goal is to use xmrig on Akash. Akash is an exciting crypto project that allows data centers to rent underutilized compute capacity in the form of a decentralized kubernetes service.  Akash is a very exciting and disruptive technology that is certainly worth a look [ Akash ](https://akash.network).

To use Akash, you need to first purchase 

 fully decentralized fashion. hardware to rent out hardware / space on the open market 
# Background and current status

This repository successfuly deploys an xmrig on the Akash network. Akash is an exciting crypto project  


# Buy me a coffee to keep the work going

| | |
--- | --- 
|akash:|`akash1k07dv0wcjej4e4a5z9dg3c6yvvf9mcnz0sacp9`|
|monero:| `88z2xaJaRPVc5VXtE3CArxeAkqSQV8aA4EhswR8pqfY3CghQfaD7nYsLvmcnXuHj1TYDeJaGvyyyW9XyX6ka7BLzQ7ypmqJ`|

# Getting started

*Get some `$AKT` tokens. Coin gecko has a list of [exchanges](https://www.coingecko.com/en/coins/akash-network). I personally used [Gate.io ]( https://www.gate.io/ ). Although AscendX (Bitmax) appears to have much more volume. Additional exchanges are in the works from what I understand. You will need at least 5 for escrow. 

* Setup Akash environment.
** [Official Akash documemtation] https://docs.akash.network/guides/deploy
** [Best Getting started link] https://github.com/tombeynon/akash-deploy

# Status and profitability

After some tweaking, this deployment was able to obtain **3200H/S**. According to Monero mining calculators, this should result in about $12 for a single deployment.
Please note, this project is not to prove profitability, but instead a way to demonstrate the capabilities of the akash network.

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
