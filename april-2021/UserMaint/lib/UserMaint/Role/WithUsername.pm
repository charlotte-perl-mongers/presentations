package UserMaint::Role::WithUsername;

use v5.32;
use Moo::Role;
use CLI::Osprey;

option username => (
    is         => 'ro',
    short      => 'u', 
    doc        => 'name of the user',
    format     => 's',
    format_doc => 'username',
    required   => 1,
);
 
sub find_by_username {
    my( $self, $username ) = @_;
    my $user = $self->parent_command->schema->resultset( 'User' )->find({ username => $username })
        or warn "Username $username not found!\n";
    return $user;
}

1;

