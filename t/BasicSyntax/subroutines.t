use strict;
use Test::More;
use File::Spec;
use FindBin;

require File::Spec->rel2abs($FindBin::Bin . '/../../lib/BasicSyntax/subroutines.pl');

ok find_triangle_area_1(10, 5) == 25;
ok find_triangle_area_2(10, 5) == 25;
ok find_triangle_area_3(10, 5) == 25;

done_testing;
