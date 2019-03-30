package Blort::Commands::AddUser;

use v5.26;
use MooseX::App::Command;
extends qw( Blort );
with qw(
    Blort::Role::WithUsername
    Blort::Role::WithPassword
    Blort::Role::WithEmail
);
use feature 'signatures';
no warnings 'experimental::signatures';

option 'godmode' => (
    is            => 'rw',
    isa           => 'Bool',
    required      => 0,
    documentation => 'Enable Doom-like God-mode for this user?',
    cmd_aliases   => [qw(g)],
    default       => 0,
);

sub run ( $self ) {
    my $user = $self->username;
    $self->_say_debug( "Running AddUser..." );
    $self->_say( "Creating $user...done!" );
}

1;
