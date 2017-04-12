use strict;
use warnings;

sub {
  my $env = shift;
  [
    200,
    ['Content-Type' => 'text/plain'],
    ["Hello world\n"],
  ];
}
