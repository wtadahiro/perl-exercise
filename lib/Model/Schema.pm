package Model::Schema;
use strict;
use warnings;
use utf8;
use Teng::Schema::Declare;

table {
  name 'members';
  pk 'id';
  columns qw(id name status_flag);
};

1;
