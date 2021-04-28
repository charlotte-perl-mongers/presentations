package UserMaint::Delete;
use v5.32;
use Moo;
use CLI::Osprey desc => 'Delete a user';
with 'UserMaint::Role::WithVerbose', 'UserMaint::Role::WithUsername';

sub run {
    my $self = shift;

    if( my $user = $self->find_by_username( $self->username ) ) {
        print "Deleting ", $self->username, '... ' if $self->verbose;
        $user->delete;
        say "done!";
    } 
    # No else, because the role handles the message
}

1;

