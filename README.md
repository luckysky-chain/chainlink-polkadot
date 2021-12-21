# Demo:Chainlink-polkadot
**this is the demo for chainlink-polkadot, not luckysky's parachain**
This repository contains the [Chainlink](https://chain.link/) feed pallet as well as an example node showing how to integrate
it in [Substrate](https://www.substrate.io/)-based chains.

It also includes the `pallet-chainlink` for interacting with the Chainlink job-based oracle system.

## How to integrate the Chainlink feed pallet into a runtime?
The pallet is added to the runtime like any regular pallet (see [tutorial](https://substrate.dev/docs/en/tutorials/add-a-pallet/)).
It then needs to be configured. See the [pallet readme](./pallet-chainlink-feed/README.md) for details.

The usage is simple:
```Rust
let feed = T::Oracle::feed(0.into()).ok_or(Error::<T>::FeedMissing)?;
let RoundData { answer, .. } = feed.latest_data();
do_something_with_answer(answer);
```
See [the template pallet](./substrate-node-example/pallets/template/src/lib.rs) for a full example showing how to access a price feed.


## Run the example

```Bash
cd substrate-node-example

//run
cargo run --release -- --dev --tmp --ws-port 8844 --unsafe-ws-external --rpc-cors all
```
once it compile successfully, it will automatically generate new blocks

## Run frontend

```Bash
cd substrate-node-example
cd front-end

//install
yarn install

//run
yarn run start
```
