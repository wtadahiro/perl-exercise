package Object;
use strict;
use warnings;

sub new {
  my $class = shift;
  my $self = { count => 0 };
  return bless $self, $class;
}

sub count {
  my $self = shift;
  return $self->{count};
}

sub increment {
  my $self = shift;
  $self->{count}++;
}

sub decrement {
  my $self = shift;
  $self->{count}--;
}

1;
