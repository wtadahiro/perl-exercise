package BasicSyntax::Module;
use strict;
use Exporter qw(import);

our @EXPORT_OK = qw(square);

sub square {
  my $arg = shift;
  return $arg * $arg;
}

1;
