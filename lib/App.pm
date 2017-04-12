package App;
use strict;
use warnings;
use parent qw(Mojolicious);

sub startup {
    my $self   = shift;
    my $routes = $self->routes;

    $routes->namespaces(['App::Controller']);
    $routes->get('/')->to('root#respond_hello_world');
}

1;
