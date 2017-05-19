use common::sense;
use Test::More;
use Data::Dumper;

use_ok 'hashToString';

subtest 'hashToString' => sub {
    my $hash_ref = {
        foo  => 'foo',
        bar  => 1,
        hash => { hoge => 'hoge', },
    };
    my $string = HashToString::hashToString($hash_ref);
    is $string, '{"hash":{"hoge":"hoge"},"bar":1,"foo":"foo"}';
};

done_testing;

