use strict;
use warnings;
use utf8;
use Test::More;
use Data::Dumper;

use_ok 'Model';

my $model = Model->create_instance;
$model->dbh->do('DELETE FROM members');

subtest 'insert' => sub {
    my $hello = '你好';
    my $inserted_row = $model->insert(
        members => {
            name        => $hello,
            status_flag => 1,
        },
    );

    isa_ok $inserted_row, 'Model::Row::Members';
    is $inserted_row->name,        '你好';
    is $inserted_row->status_flag, 1;

    subtest 'select single row' => sub {
        my $selected_row = $model->single(members => { id => $inserted_row->id },);

        isa_ok $selected_row, 'Model::Row::Members';
        is $selected_row->name,        '你好';
        is $selected_row->status_flag, 1;
    };
};

done_testing;
