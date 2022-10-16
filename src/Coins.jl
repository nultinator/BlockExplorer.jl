"""
### Coin
- url::**String**

`Coin` holds the URL for blockchain to explore.
##### example
```
const BTC = Coin(
    "bitcoinblockexplorers.com"
)
```
------------------
##### field info
- **url** is a String which denotes what URL to retrieve this coin from
------------------
##### constructors
- Coin(::String)
"""
struct Coin
    url::String
end
#Bitcoin
const BTC = Coin(
    "bitcoinblockexplorers.com"
)
#Bitcoin Cash
const BCH = Coin(
    "bchblockexplorer.com"
)
#Komodo
const KMD = Coin(
    "komodoblockexplorer.com"
)
#Litecoin
const LTC = Coin(
    "litecoinblockexplorer.net"
)
#Ycash
const YEC = Coin(
    "yecblockexplorer.com"
)
#Zcash
const ZEC = Coin(
    "zecblockexplorer.com"
)
