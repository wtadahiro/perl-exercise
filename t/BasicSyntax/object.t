use strict;
use warnings;
use Test::More;
use BasicSyntax::Object;

subtest 'it should create an instance of Object module' => sub {
  my $obj = Object->new;
  isa_ok $obj, 'Object';
};

subtest 'it should increment count' => sub {
  my $counter = Object->new;
  ok $counter->count == 0;

  $counter->increment;
  ok $counter->count == 1;
};

subtest 'it should decrement count' => sub {
  my $counter = Object->new;
  $counter->increment;
  ok $counter->count == 1;

  $counter->decrement;
  ok $counter->count == 0;
};

done_testing;
