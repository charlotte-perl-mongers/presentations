package UserMaint::Role::WithEmail;

use v5.32;
use Moo::Role;
use CLI::Osprey;
use Type::EmailAddress qw( EmailAddress );

option email => (
    is         => 'ro',
    isa        => EmailAddress,
    short      => 'e', 
    doc        => 'email address of the user',
    format     => 's',
    format_doc => 'email address',
    required   => 1,
);
 
1;
