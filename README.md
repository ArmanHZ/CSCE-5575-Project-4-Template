# CSCE-5575-Project-4-Template <br /> Instructor: Beddhu Murali
In this project, you will learn how to perform unit testing for your Solidity Smart Contracts.

You are given a `Counter.sol` smart contract, which implements an ERC-20 contract.

However, this contract has some flawed and buggy functions. Your task are as follows:
- Utilize assertion and fuzz testing to find bugs
- Test every function (don't expect a bug for each function)
- Test for edge cases
  - e.g. division by 0, null strings, negative numbers, array indexes, lengths, etc.
- Write a PDF report of your findings and why/how you tested each function

You will be working on `Counter.t.sol` file only.

# Environmnet-setup
Create an empty directory and navigate into it:

```bash
mkdir Project_4 && cd Project_4
```

Create an empty Foundry project:

```bash
forge init --no-commit .
```

Install the OpenZeppelin contracts:

```bash
forge install --no-commit OpenZeppelin/openzeppelin-contracts
```

Finally copy the `Counter.sol` to `src` directory and `Counter.t.sol` to `test` directory from this repository.

# Resources
To run the tests, you can use

```bash
forge test
# For a more verbose (detailed) output from your tests you can use 1 to 5 v's
forge test -v
forge test -vvv
forge test -vvvvv
```

- How to write tests: https://book.getfoundry.sh/forge/writing-tests
- How to test with modifiers such as onlyOwner: https://book.getfoundry.sh/forge/cheatcodes
- Fuzz testing: https://book.getfoundry.sh/forge/fuzz-testing

In general, read all the Foundry Book testing related sections.

# Submission
- PDF report of your findings and what/how/why you performed the unit tests on ***each function***
- Screenshot ouput of your `forge test` command. (Preferably with some verbosity)
- The modified `Counter.t.sol` file
