# Learn Solidity Course Solutions  
 
This repository provides solutions to the code exercises of the Alchemy University course 
[Learn Solidity](https://university.alchemy.com/overview/solidity).

## Table of Contents  

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Course Contents](#course-contents)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

> **Learn Solidity** covers the essentials of the language, 
starting from basic value types like int, uint, and bool, 
to more complex features such as address interactions, reference types like arrays, structs, and mappings, 
and applied practices with real-world contract examples and inheritance. Hands-on IDE practice and 
engaging video content offer immediate feedback, ensuring a comprehensive understanding. 
This course is the modern successor to traditional Solidity education, 
laying the groundwork for future learning in EIPs and community-adopted patterns. 
It's the ultimate starting point for anyone looking to be effective in the space!


## Prerequisites

The course leverages Foundry as its primary development framework,
a robust toolset that greatly facilitates the compilation of smart contracts
and enhances the efficiency of both development and deployment activities within blockchain applications.
Foundry includes a set of individual frameworks, among them **Forge**, a dedicated Ethereum testing framework
used within the course to test the solutions provided by the students.

To install Foundry, head over to their documentation: https://book.getfoundry.sh/

## Course Contents

Within each chapter, you will find all individual coding challenges with a provided solution.
As in other programming languages, multiple solutions are often possible. 
Consequently, the solutions presented here should not be treated as exclusive or definitive. 
Alternative approaches may also yield successful test runs.

### Chapter 1  

- Basic Data Types
- Functions

### Chapter 2

- Sending Ether
- Reverting Transactions
- Calldata
- Code an Escrow contract

### Chapter 3 

- Arrays
- Structs
- Mappings

### Chapter 4

- Code a Voting contract leveraging the course contents
- Inheritance

## Usage

Use the command line to compile and test the smart contracts.

### Compile

```shell
$ forge compile
```

### Test

```shell
$ forge test
```

## Contributing

If you'd like to contribute to this repository, please follow these guidelines:

1. Fork the repository to your GitHub account.
2. Create a new branch for your contributions: 
   ```shell
   $ git checkout -b feature/new-feature
   ```
3. Make your changes, whether they are bug fixes, improvements or documentation updates.
4. Commit your changes with a descriptive commit messages.
5. Push your branch to your forked repository on GitHub:
   ```shell
   $ git push origin feature/new-feature
   ```
6. Open a Pull Request (PR) to the main repository, explaining the purpose of your changes.

**Your contributions are greatly appreciated!**

## License

This course repository is licensed under the [MIT License](LICENSE.txt).  
Feel free to use, modify, and distribute the content for educational purposes.