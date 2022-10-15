"""
### Coin
- url::**String**

`Coin` holds the URL for a coin exchange to explore.
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

const BTC = Coin(
    "bitcoinblockexplorers.com"
)

const BCH = Coin(
    "bchblockexplorer.com"
)

const KMD = Coin(
    "komodoblockexplorer.com"
)

const LTC = Coin(
    "litecoinblockexplorer.net"
)

const YEC = Coin(
    "yecblockexplorer.com"
)

const ZEC = Coin(
    "zecblockexplorer.com"
)
