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
################### KMD Tests ######################
@testset "KMD Tests" begin
    @test getblock_hash(KMD, 0) == "027e3758c3a65b12aa1046462b486d0a63bfa1beae327897f56c5cfb7daaae71"
    @test getblock(KMD, 1)["nonce"] == getblock(KMD, "0a47c1323f393650f7221c217d19d149d002d35444f47fde61be2dd90fbde8e6")["nonce"]
    @test gettransaction(KMD, "e1c2725b908a8afb615efe7ea254d23f581704009bc9b7ec21c9612e90f9187c")["height"] == 3121019
    @test getbalance_history(KMD, "RKtrYT7yN2ZgV8wqEj5c2EoZPMtB1gdjDR") != 0
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

################# ZEC Tests #########################
@testset "ZEC Tests" begin
    @test typeof(getblockcount(ZEC)) == Int64
    @test getblock(ZEC, 1)["nonce"] == getblock(ZEC, "0007bc227e1c57a4a70e237cad00e7b7ce565155ab49166bc57397a26d339283")["nonce"]
    @test getbalance_history(ZEC, "t3XyYW8yBFRuMnfvm5KLGFbEVz25kckZXym") !=0
    @test gettransaction(ZEC, "c27cea0f91b2e20160c41157d67a57ed474c7d71a953e166384e522d707ba273")["blockHash"] == "000000000014c22d5175a1e9795b8bf05aa4f914986666a5bc1b3a2a0d23948b"
end # module
