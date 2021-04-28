package UserMaint::List;
use v5.32;
use Moo;
use CLI::Osprey desc => 'List all users';
with 'UserMaint::Role::WithVerbose';

sub run {
    my $self = shift;

    my $user_rs = $self->parent_command->schema->resultset( 'User' )->search({});
    while( my $user = $user_rs->next ) {
        print "User: " . $user->username;
        print " Email: ", $user->email, " Real Name: ", $user->real_name
            if $self->verbose;
        print "\n";
    }
}

1;

