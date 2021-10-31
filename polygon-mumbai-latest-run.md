hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --network polygon_mumbai

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'polygon_mumbai'
> Network id:      80001
> Block gas limit: 20000000 (0x1312d00)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0xff197df51fa13470a750ac7b1d8f8dc12c18e6f15f27876a9bb15935ae1ed988
   > Blocks: 4            Seconds: 9
   > contract address:    0x41216036435bCa284ffE630dee05D392EE98296a
   > block number:        20862517
   > block timestamp:     1635666454
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.9970528
   > gas used:            245600 (0x3bf60)
   > gas price:           12 gwei
   > value sent:          0 ETH
   > total cost:          0.0029472 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 3 (block: 20862522)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0029472 ETH


2_upgradable_onec.js
====================

   Deploying 'Onec'
   ----------------
   > transaction hash:    0x894b5bb5bb731dcb2816aa5975e1aee32286a585c1e5111f371900e5a18eeb20
   > Blocks: 4            Seconds: 9
   > contract address:    0x343a3D89b9146D25E7a9C8C9caE239cee0384ef3
   > block number:        20862531
   > block timestamp:     1635666486
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.953389552
   > gas used:            3592691 (0x36d1f3)
   > gas price:           12 gwei
   > value sent:          0 ETH
   > total cost:          0.043112292 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 20862536)

   Deploying 'ProxyAdmin'
   ----------------------
   > transaction hash:    0x7b8818d6a8c858ceb78f2ef6225c4519e644a303d99aab6a49f8326e43d6ecb5
   > Blocks: 4            Seconds: 9
   > contract address:    0x9A020c3395dfDf47D65B94e9362Dcda97D52168D
   > block number:        20862543
   > block timestamp:     1635666510
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.947581312
   > gas used:            484020 (0x762b4)
   > gas price:           12 gwei
   > value sent:          0 ETH
   > total cost:          0.00580824 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 3 (block: 20862548)

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0xc567df9878fa52945195de6cc731b8fbe48bbc87fde599a58b1ab3c421265555
   > Blocks: 5            Seconds: 9
   > contract address:    0xFd59cA776A3Dc0382285D1462770Ba0fd6043D84
   > block number:        20862555
   > block timestamp:     1635666534
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.939835204
   > gas used:            645509 (0x9d985)
   > gas price:           12 gwei
   > value sent:          0 ETH
   > total cost:          0.007746108 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 20862559)
Deployed 0xFd59cA776A3Dc0382285D1462770Ba0fd6043D84

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.05666664 ETH


Summary
=======
> Total deployments:   4
> Final cost:          0.05961384 ETH


hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % 
