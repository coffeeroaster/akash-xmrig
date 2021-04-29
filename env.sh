export AKASH_NET=https://raw.githubusercontent.com/ovrclk/net/master/mainnet
export AKASH_VERSION=$(curl -s "$AKASH_NET/version.txt")
export AKASH_NODE=$(curl -s "$AKASH_NET/rpc-nodes.txt" | sort -R | head -1)
export AKASH_CHAIN_ID=$(curl -s "$AKASH_NET/chain-id.txt")
export DEPLOY_ROOT=$HOME/.akash/deploy
export AKASH_BIN=$HOME/bin/akash
