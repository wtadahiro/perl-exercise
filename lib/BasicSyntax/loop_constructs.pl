#!/usr/bin/perl

# Loop constructs

## while
my $count = 0;
while($count < 3) {
  print("loop in while $count times", "\n");
  $count++;
}

## for
for my $i (0 .. 2) {
  print("loop in for $i times", "\n");
}

### iteration
my @elements = (0, 1, 2);
for my $element (@elements) {
  print("iteration $element", "\n");
}

### implicitly
for (@elements) {
  print; # it's equivalent to print $_;
}

### map
map {print($_, "\n")} @elements;

### iterating through a hash
%hash = (apple => 'red', banana => 'yellow');
foreach my $key (keys %hash) {
  print($key, '\'s color is ', $hash{$key}, "\n" );
}

### perlish post-condition way
print($_, "\n") for @elements;
print($hash{$_}, "\n") for keys %hash;

