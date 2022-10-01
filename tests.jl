@assert 1 == 1
println("1 = 1: passed")

@assert getblockhash(0) == "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
println("Blockhash 0: passed")

@assert getblock(1)["nonce"] == getblock("00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048")["nonce"]
println("getblock(int) == getblock(hash): passed")

@assert getaddress("12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")["totalSent"] == "0"
println("Satoshi doesn't spend: passed")