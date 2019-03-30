package Blort::Role::WithEmail;

use v5.26;
use MooseX::App::Role;
use MooseX::Types::Email qw/EmailAddress/;
use feature 'signatures';
no warnings 'experimental::signatures';

option 'email' => (
    is            => 'rw',
    isa           => EmailAddress,
    required      => 1,
    documentation => 'Email address of user (someone@example.com)',
    cmd_aliases   => [qw(e)], 
);

1;
