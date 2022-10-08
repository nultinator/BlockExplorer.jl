module test
using Test
using BlockExplorer
################### BTC Tests #####################

@testset "BTC Tests" begin
    @test getblock_hash(BTC, 0) == "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
    @test getblock(BTC, 1)["nonce"] == getblock(BTC, "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048")["nonce"]
    @test getaddress(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")["totalSent"] == "0"
    @test listunspent(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
    @test getbalance_history(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
    @test gettransaction(BTC, "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098")["blockhash"] == "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048"
end
################### BCH Tests #####################
@testset "BCH Tests" begin
    @test getblock_hash(BCH, 0) == "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
    @test getblock(BCH, 1)["nonce"] == getblock(BTC, "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048")["nonce"]
    @test getaddress(BCH, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")["totalSent"] == "0"
    @test listunspent(BCH, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
    @test getbalance_history(BCH, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
    @test gettransaction(BCH, "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098")["blockhash"] == "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048"
end
################### LTC Tests ######################
@testset "LTC Tests" begin
    @test getblock_hash(LTC, 0) == "12a765e31ffd4059bada1e25190f6e98c99d9714d334efa41a195a7e7e04bfe2"
    @test getblock(LTC, 1)["nonce"] == getblock(LTC, "80ca095ed10b02e53d769eb6eaf92cd04e9e0759e5be4a8477b42911ba49c78f")["nonce"]
    @test getaddress(LTC, "LSdTvMHRm8sScqwCi6x9wzYQae8JeZhx6y")["txs"] != 0
    @test gettransaction(LTC, "fa3906a4219078364372d0e2715f93e822edd0b47ce146c71ba7ba57179b50f6")["blockhash"] == "80ca095ed10b02e53d769eb6eaf92cd04e9e0759e5be4a8477b42911ba49c78f"
    @test getbalance_history(LTC,"LSdTvMHRm8sScqwCi6x9wzYQae8JeZhx6y") != 0
end
#################### YEC Tests ######################
@testset "YEC Tests" begin
    @test getblock_hash(YEC, 570000) == "0000014fbc5917ba8bcacf3336faf588d86b32443aa3a490a587af5750c77ec5"
    @test getblock(YEC, 570000)["nonce"] == getblock(YEC, "0000014fbc5917ba8bcacf3336faf588d86b32443aa3a490a587af5750c77ec5")["nonce"]
    @test getaddress(YEC, "s2xbtsG1JXb4pu3H2ZuhuL8UTFvtmSizYRL")["address"] == "s2xbtsG1JXb4pu3H2ZuhuL8UTFvtmSizYRL"
    @test listunspent(YEC, "s2xbtsG1JXb4pu3H2ZuhuL8UTFvtmSizYRL")[end]["txid"] == "80f12311e8a74f6ef52e7adcdfa479cf5db80179b97c5a70fe414fe763f52b1b"
    @test getbalance_history(YEC, "s2xbtsG1JXb4pu3H2ZuhuL8UTFvtmSizYRL") != 0
    @test gettransaction(YEC, "617662aee4694b0a1832b1cc818c00f88a8e33d125345dee42e9c3f20677a77b")["blockhash"] == "0000014fbc5917ba8bcacf3336faf588d86b32443aa3a490a587af5750c77ec5"
end
end # module
