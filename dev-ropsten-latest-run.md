hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --reset --network ropsten       

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'ropsten'
> Network id:      3
> Block gas limit: 8000000 (0x7a1200)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x7d76b0c449e27fcd523b31c33f02f687d88d270a6cdf51305dfd5ae149955b61
   > Blocks: 1            Seconds: 9
   > contract address:    0xCDf898E81E047e3337af6EE28D06Beb95942b9D6
   > block number:        11488213
   > block timestamp:     1637778098
   > account:             0x97A87eC2eb408F2941ad04823C0d22F9AC0b16aa
   > balance:             0.2996315990598432
   > gas used:            245600 (0x3bf60)
   > gas price:           1.500003828 gwei
   > value sent:          0 ETH
   > total cost:          0.0003684009401568 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11488214)
   > confirmation number: 3 (block: 11488216)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.0003684009401568 ETH


2_upgradable_onec.js
====================

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0x0a975d0467ff516f388563cfd66bdfe3b4444938540bcca943e7925edbe8e28a
   > Blocks: 7            Seconds: 69
   > contract address:    0x3Bb7d607838827A3D53A372ea942ec296D5d3B17
   > block number:        11488227
   > block timestamp:     1637778231
   > account:             0x97A87eC2eb408F2941ad04823C0d22F9AC0b16aa
   > balance:             0.298594464482395019
   > gas used:            645509 (0x9d985)
   > gas price:           1.500002228 gwei
   > value sent:          0 ETH
   > total cost:          0.000968264938194052 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11488228)
   > confirmation number: 2 (block: 11488229)
Deployed 0x3Bb7d607838827A3D53A372ea942ec296D5d3B17

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000968264938194052 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.001336665878350852 ETH
