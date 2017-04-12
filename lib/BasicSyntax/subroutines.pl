#!/usr/bin/perl

# getting arguments
## following subroutines are equivalent
sub find_triangle_area_1 {
  return $_[0] * $_[1] / 2;
}

sub find_triangle_area_2 {
  my ($base, $height) = @_;
  return $base * $height / 2;
}

sub find_triangle_area_3 {
  my $base = shift;
  my $height = shift;
  return $base * $height / 2;
}

1;
