#!/usr/bin/perl

# Conditional constructs
my $string = 'foo'; # non-empty string is evaluated as truthy
my $truthy = 1;
my $falsy = 0;

## basic if/else
if ($string) {
  print "foo\n";
} elsif ($string eq 'bar') {
  print "bar\n";
} else {
  print "foobar\n";
}

## unless equivalent to if(!$falsy)
unless ($falsy) {
  print "unless\n";
}

## post condition
print($string, "\n") if $truthy;
print($string, "\n") unless $falsy;

# Comparison operators
## For Numeric
### Equality
if (1 == 1) {
  print "==\n";
}

if (1 != 0) {
  print "!=\n";
}

### Comparison
print(2 <=> 4, "\n"); # -1
print(4 <=> 4, "\n"); # 0
print(6 <=> 4, "\n"); # 1

### Relations
if (1 > 0) {
  print('greater than, >', "\n");
}

if (0 < 1) {
  print('less than, <', "\n");
}

if (1 >= 1) {
  print('greater than or equal, >=', "\n");
}

if (1 <= 1) {
  print('less than or equal, <=', "\n");
}

## For String
### Equality
if ('foo' eq 'foo') {
  print "eq\n";
}

if ('foo' ne 'bar') {
  print "ne\n";
}

### Comparison it's useful for sorting
print('a' cmp 'b', "\n"); # -1
print('a' cmp 'a', "\n"); # 0
print('b' cmp 'a', "\n"); # 1

### Relations
if ('b' gt 'a') {
  print("b is greater than a, gt", "\n");
}

if ('a' lt 'b') {
  print("a is less than b, lt", "\n");
}

if ('a' ge 'a') {
  print('a is greater than or equal a, ge', "\n");
}

if ('a' le 'a') {
  print('a is less than or equal a, le', "\n");
}

