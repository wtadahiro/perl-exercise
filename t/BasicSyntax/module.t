use strict;
use warnings;
use Test::More;
use BasicSyntax::Module qw(square);

ok square(5) == 25;
ok square(0) == 0;

done_testing;

