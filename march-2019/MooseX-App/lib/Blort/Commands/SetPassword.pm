package Blort::Commands::SetPassword;

use v5.26;
use MooseX::App::Command;
extends qw( Blort );
with qw( 
    Blort::Role::WithPassword
    Blort::Role::WithUsername
);
use feature 'signatures';
no warnings 'experimental::signatures';

sub run ( $self ) {
    $self->_say( "Changing password for " . $self->username . '...' );
    $self->_say( "Done!" );
}

1;
