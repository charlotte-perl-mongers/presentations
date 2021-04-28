package UserMaint::Role::WithPassword;

use v5.32;
use Moo::Role;
use CLI::Osprey;

option password => (
    is         => 'ro',
    short      => 'p', 
    doc        => 'password for the user',
    format     => 's',
    format_doc => 'password',
    required   => 1,
);
 
1;

