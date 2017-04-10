#!/usr/bin/perl

# References
## creating references
my @array = ('foo', 'bar');
my $array_ref = \@array;

my %hash = (apple => 'red', banana => 'yellow');
my $hash_ref = \%hash;

### shorthand form of creating references
my $array_ref_s = ['foo', 'bar'];
my $hash_ref_s = {apple => 'red', banana => 'yellow'};

### array which contains arrays
my @array1 = ('foo', 'bar');
my @array2 = ('foo', 'bar');
my @array_of_arrays = (\@array1, \@array2);
my $ref_array_of_arrays = [\@array1, \@array2];

## dereference
### with the appropriate sigil
my @dereferenced_array = @$array_ref;
my %dereferenced_hash = %$hash_ref;

### shortcut, with the arrow operator(accessing single value)
my $first = $array_ref->[0];
my $color_of_banana = $hash_ref->{banana};

### access to the value of array of arrays
my $first_of_first_array = $array_of_arrays[0]->[0];
my $first_of_first_array_from_ref = $ref_array_of_arrays->[0]->[0];

