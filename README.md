# juliaBlockExplorer
make blockbook api calls from julia

<h3>Setup</h3>

```shell
git clone https://github.com/nultinator/juliaBlockExplorer
```

<h3>To use</h3>

```shell
cd path/to/juliaBlockexplorer
./julia
include("main.jl")
```

<h3>Commands</h3>
<h4>getblockhash()</h4>
<p>Takes a blockheight(integer) as input and returns the block hash</p>

```julia
getblockhash(0)
```
<b>Output</b><br>
```julia
"000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
```

<h4>getblock()</h4>
<p>Takes a NON-ZERO blockheight(integer) as input and returns block data</p>

```julia
getblock(1)
```
<b>Output</b><br>
```julia
Dict{String, Any} with 17 entries:
  "time"              => 1231469665
  "difficulty"        => "1"
  "itemsOnPage"       => 1000
  "bits"              => "1d00ffff"
  "merkleRoot"        => "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098"
  "height"            => 1
  "confirmations"     => 756791
  "totalPages"        => 1
  "version"           => 1
  "hash"              => "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048"
  "previousBlockHash" => "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
  "nextBlockHash"     => "000000006a625f06636b8bb6ac7b960a8d03705d1ace08b1a19da3fdcc99ddbd"
  "size"              => 215
  "txCount"           => 1
  "txs"               => Any[Dict{String, Any}("valueIn"=>"0", "blockHash"=>"00000000839a8e6886ab5951d76f41147…
  "page"              => 1
  "nonce"             => "2573394689"
```

<h4>getaddress()</h4>
<p>Takes an address(string) as input and returns individual data for the address</p>

```
getaddress("12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")
```
<b>Output</b></br>

```julia
Dict{String, Any} with 11 entries:
  "itemsOnPage"        => 1000
  "address"            => "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"
  "unconfirmedBalance" => "0"
  "totalReceived"      => "5134884961"
  "totalPages"         => 1
  "balance"            => "5134884961"
  "unconfirmedTxs"     => 0
  "totalSent"          => "0"
  "txs"                => 153
  "page"               => 1
  "txids"              => Any["c5f368e33f4be03de149556f462fcd2c732e9024105841a825382c655483f938", "358f305c021…
```

<h4>listunspent()</h4>
<p>Takes an addess(string) as input and returns the UTXOs (unspent transaction outputs) belonging to that address</p>

```
listunspent("12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")
```
<b>Output</b><br>

```julia
153-element Vector{Any}:
 Dict{String, Any}("height" => 755662, "vout" => 94, "txid" => "c5f368e33f4be03de149556f462fcd2c732e9024105841a825382c655483f938", "confirmations" => 1132, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "7235")
 Dict{String, Any}("height" => 755539, "vout" => 11, "txid" => "358f305c021c3cd9b54de436dab53fa68b127572f12194a727e92c2ac86cd9b9", "confirmations" => 1255, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "4964")
 Dict{String, Any}("height" => 755496, "vout" => 2, "txid" => "b4a05bfa81f0a845e82917ff83b0fe4736b75c474d4900e91d36bc165a605271", "confirmations" => 1298, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "10000")
 Dict{String, Any}("height" => 752747, "vout" => 0, "txid" => "529036c273a9ededa8bd5bfd723a333d7b44e3f9d1cfe807a85db954f543144b", "confirmations" => 4047, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "18267")
 Dict{String, Any}("height" => 740397, "vout" => 0, "txid" => "f194ab74232988449dcf71bb9c35aeae6f5c3916d99fa975b19d3ab2796b4df6", "confirmations" => 16397, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "10000")
 Dict{String, Any}("height" => 730471, "vout" => 1, "txid" => "5f7689ad4741321fcef3e6210dec343058f639e536685fb341bdc1b120ef6bea", "confirmations" => 26323, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "617")
 Dict{String, Any}("height" => 726192, "vout" => 1, "txid" => "ba5af140f57ef72b665a2e00517730ca6765463c5fe0bebb9d6e794fcf81a3fe", "confirmations" => 30602, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "14000")
 Dict{String, Any}("height" => 725822, "vout" => 0, "txid" => "ab525d891d155abcbf0248e8d73e20608d81e875ae0d747c59440179b392d6e3", "confirmations" => 30972, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "666")
 Dict{String, Any}("height" => 724656, "vout" => 0, "txid" => "423f362e689530856fdfbf87e8f5b34360f10d26a0e9baef38fb6ce7a7f13f67", "confirmations" => 32138, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "9623")
 Dict{String, Any}("height" => 724655, "vout" => 0, "txid" => "bc90ba5e6b7f2ebdebbb94a23b09eb9ff7f7be68d85037a4dfac819e0a6bdd77", "confirmations" => 32139, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "2681")
 ⋮
 Dict{String, Any}("height" => 273272, "vout" => 0, "txid" => "a66dddd42f9f2491d3c336ce5527d45cc5c2163aaed3158f81dc054447f447a2", "confirmations" => 483522, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "10000")
 Dict{String, Any}("height" => 268401, "vout" => 0, "txid" => "ffd901679de65d4398de90cefe68d2c3ef073c41f7e8dbec2fb5cd75fe71dfe7", "confirmations" => 488393, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "100")
 Dict{String, Any}("height" => 257401, "vout" => 5, "txid" => "d658ab87cc053b8dbcfd4aa2717fd23cc3edfe90ec75351fadd6a0f7993b461d", "confirmations" => 499393, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "911")
 Dict{String, Any}("height" => 252155, "vout" => 1, "txid" => "36ebe0ca3237002acb12e1474a3859bde0ac84b419ec4ae373e63363ebef731c", "confirmations" => 504639, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "100000")
 Dict{String, Any}("height" => 228920, "vout" => 0, "txid" => "fd87f9adebb17f4ebb1673da76ff48ad29e64b7afa02fda0f2c14e43d220fe24", "confirmations" => 527874, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "1")
 Dict{String, Any}("height" => 215321, "vout" => 1, "txid" => "dfdf0b375a987f17056e5e919ee6eadd87dad36c09c4016d4a03cea15e5c05e3", "confirmations" => 541473, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "1337")
 Dict{String, Any}("height" => 190528, "vout" => 0, "txid" => "cb2679bfd0a557b2dc0d8a6116822f3fcbe281ca3f3e18d3855aa7ea378fa373", "confirmations" => 566266, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "1337")
 Dict{String, Any}("height" => 127659, "vout" => 1, "txid" => "d6be34ccf6edddc3cf69842dce99fe503bf632ba2c2adb0f95c63f6706ae0c52", "confirmations" => 629135, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "2000000")
 Dict{String, Any}("height" => 1, "vout" => 0, "txid" => "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098", "confirmations" => 756793, "scriptPubKey" => "410496b538e853519c726a2c91e61ec11600ae1390813a627c66fb8be7947be63c52da7589379515d4e0a604f8141781e62294721166bf621e73a82cbf2342c858eeac", "value" => "5000000000")
```
<h4>getbalancehistory()</h4>
<p>Takes an address(string) as input and returns transaction history</p>

```julia
getbalancehistory("12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")
```

<b>Output</b><br>

```julia
144-element Vector{Any}:
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1231466400, "received" => "5000000000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1306767600, "received" => "2000000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1343131200, "received" => "1337", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1357423200, "received" => "1337", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1364731200, "received" => "1", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1376503200, "received" => "100000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1378936800, "received" => "911", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1383825600, "received" => "100", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1386284400, "received" => "10000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1393606800, "received" => "10000", "txs" => 1)
 ⋮
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1645646400, "received" => "12304", "txs" => 2)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1646362800, "received" => "666", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1646607600, "received" => "14000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1649116800, "received" => "617", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1654981200, "received" => "10000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1662390000, "received" => "18267", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1664024400, "received" => "10000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1664053200, "received" => "4964", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1664121600, "received" => "7235", "txs" => 1)
```
<h4>gettransaction()</h4>
<p>Takes a transaction hash(string) as input and returns transaction data</p>

```julia
gettransaction("0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098")
```

<b>Output</b><br>

```julia
Dict{String, Any} with 14 entries:
  "vout"          => Any[Dict{String, Any}("scriptPubKey"=>Dict{String, Any}("a…
  "time"          => 1231469665
  "blocktime"     => 1231469665
  "locktime"      => 0
  "confirmations" => 756793
  "vsize"         => 134
  "version"       => 1
  "hex"           => "010000000100000000000000000000000000000000000000000000000…
  "hash"          => "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1ef…
  "size"          => 134
  "vin"           => Any[Dict{String, Any}("sequence"=>4294967295, "coinbase"=>…
  "weight"        => 536
  "txid"          => "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1ef…
  "blockhash"     => "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf1…
```
