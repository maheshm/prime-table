# Prime Multiplication Table
## Problem statement

### Write a program that prints out a multiplication table of the first N prime numbers.

* The program must run from the command line and print a table to STDOUT.
* The first row and column of the table should have the N primes, with each cell containing the product of the primes for the corresponding row and column.
* Allow the user to specify different table sizes through a command line option. If the option is not used, the table should contain the first 10 primes by default.

### Notes:

* Consider complexity. How fast does your code run? How does it scale?
* Do not use the Prime class from the Ruby stdlib (write your own code).
* Write tests. Try to demonstrate TDD/BDD.
* If you’re using external dependencies, please specify those dependencies and how to install them.
* Create a git repository containing the initial files and do regular and small commits to log your process.
* Please package your code OR include running instructions.

## Solution

* The algorithm is same as that used in core of Ruby lib since I feel that should be the best implementation that is available.
* OOPs and extendability have been given special attention (eg: you can have more algorithms implemented that could improve performance)

### Building

To get started run the following from the root directory of repo:

```
gem build primetable.gemspec

gem install primetable-0.0.1.gem
```

External dependencies are specified in the Gemfile and is taken care within gem.
