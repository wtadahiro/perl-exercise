#!/usr/bin/perl

use strict;
use warnings;


# variable types
## scalar
my $string = 'foo';
my $integer = 123;
my $float = 1.3;


## array
my @strings = ('dog', 'cat', 'owl');
my @numbers = (1, 2, 3);
my @mixed = ('dog', 1);

### get a element by index
# @strings[0] also work, but isn't recommended
my $first = $strings[0]; # dog

### the size of array, accessing an array in a scalar context
my $size = @strings; # 3


## Hash
my %fruit_color = ('apple', 'red', 'banana', 'yellow');
my %fruit_color_arrow_operator = (
  apple => 'red',
  banana => 'yellow',
);

### get a element of hash by key
my $apple_color = $fruit_color{apple}; # red

### retrieve all keys/values using keys/values function
my @keys = keys %fruit_color; #('apple', 'banana')
my @values = values %fruit_color; #('red', 'yellow')
