package UserMaint::Create;
use v5.32;
use Moo;
use CLI::Osprey desc => 'Create a user';
with qw(
    UserMaint::Role::WithVerbose
    UserMaint::Role::WithUsername
    UserMaint::Role::WithPassword
    UserMaint::Role::WithEmail
    UserMaint::Role::WithRealName
);

sub run {
    my $self = shift;

    print "Creating ", $self->username, '... ' if $self->verbose;
    my $user = $self->parent_command->schema->resultset( 'User' )->create({
        username  => $self->username,
        password  => $self->password,
        email     => $self->email,
        real_name => $self->realname,
    });
    say "Done!";
}

1;

