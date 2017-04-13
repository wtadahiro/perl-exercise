package Model;
use strict;
use warnings;
use utf8;
use parent qw(Teng);

sub create_instance {
    my $class = shift;
    my $self  = $class->SUPER::new(
        {   connect_info => [
                'dbi:SQLite:dbname=database/test.db',    # DSN
                '',                                      # username
                '',                                      # password
            ],
        }
    );
    $self->dbh->{sqlite_unicode} = 1;    #Make SQLite I/O layer to convert byte and UTF-8
    $self;
}

1;
