package UserMaint::Role::WithRealName;

use v5.32;
use Moo::Role;
use CLI::Osprey;

option realname => (
    is         => 'ro',
    short      => 'r', 
    doc        => 'real name of the user',
    format     => 's',
    format_doc => 'real name',
    required   => 0,
);
 
1;

