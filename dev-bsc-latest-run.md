hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --reset --network bsc_testnet

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'bsc_testnet'
> Network id:      97
> Block gas limit: 29999542 (0x1c9c1b6)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x77888b5ec5b52e1a42c5aa0acd630750e849df042c55b70ee0e69ce61f75130d
   > Blocks: 1            Seconds: 5
   > contract address:    0x41216036435bCa284ffE630dee05D392EE98296a
   > block number:        14772660
   > block timestamp:     1638900122
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             1.497557
   > gas used:            244300 (0x3ba4c)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.002443 ETH

   Pausing for 10 confirmations...
   -------------------------------
   > confirmation number: 2 (block: 14772663)
   > confirmation number: 3 (block: 14772664)
   > confirmation number: 4 (block: 14772665)
   > confirmation number: 6 (block: 14772667)
   > confirmation number: 7 (block: 14772668)
   > confirmation number: 8 (block: 14772669)
   > confirmation number: 10 (block: 14772671)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:            0.002443 ETH


2_upgradable_onec.js
====================

   Deploying 'Onec'
   ----------------
   > transaction hash:    0x176155e92638d3ea61e487dce814a610b224e3b83440143d37cd1108f55aaaca
   > Blocks: 3            Seconds: 9
   > contract address:    0x343a3D89b9146D25E7a9C8C9caE239cee0384ef3
   > block number:        14772679
   > block timestamp:     1638900179
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             1.45738345
   > gas used:            3974842 (0x3ca6ba)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.03974842 ETH

   Pausing for 10 confirmations...
   -------------------------------
   > confirmation number: 2 (block: 14772682)
   > confirmation number: 3 (block: 14772683)
   > confirmation number: 5 (block: 14772685)
   > confirmation number: 6 (block: 14772686)
   > confirmation number: 7 (block: 14772687)
   > confirmation number: 9 (block: 14772689)
   > confirmation number: 10 (block: 14772690)

   Deploying 'ProxyAdmin'
   ----------------------
   > transaction hash:    0x213d2a62d7888e528ea53b7858a0fb5119c373408a71824042c016e9bdf9528a
   > Blocks: 3            Seconds: 9
   > contract address:    0x9A020c3395dfDf47D65B94e9362Dcda97D52168D
   > block number:        14772695
   > block timestamp:     1638900227
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             1.45255625
   > gas used:            482720 (0x75da0)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.0048272 ETH

   Pausing for 10 confirmations...
   -------------------------------
   > confirmation number: 2 (block: 14772698)
   > confirmation number: 3 (block: 14772699)
   > confirmation number: 5 (block: 14772701)
   > confirmation number: 6 (block: 14772702)
   > confirmation number: 7 (block: 14772703)
   > confirmation number: 9 (block: 14772705)
   > confirmation number: 10 (block: 14772706)

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0x055aa1951a751611267329623381c7d48ecc06614e19e1ee055371aab9e8568b
   > Blocks: 3            Seconds: 9
   > contract address:    0xFd59cA776A3Dc0382285D1462770Ba0fd6043D84
   > block number:        14772711
   > block timestamp:     1638900275
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             1.44606216
   > gas used:            649409 (0x9e8c1)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00649409 ETH

   Pausing for 10 confirmations...
   -------------------------------
   > confirmation number: 2 (block: 14772714)
   > confirmation number: 3 (block: 14772715)
   > confirmation number: 4 (block: 14772716)
   > confirmation number: 6 (block: 14772718)
   > confirmation number: 7 (block: 14772719)
   > confirmation number: 8 (block: 14772720)
   > confirmation number: 10 (block: 14772722)
Deployed 0xFd59cA776A3Dc0382285D1462770Ba0fd6043D84

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.05106971 ETH


Summary
=======
> Total deployments:   4
> Final cost:          0.05351271 ETH