package UserMaint;

use v5.32;
use Moo;
use CLI::Osprey;
use DBI;
use UserMaint::Schema;

#subcommand create => 'UserMaint::Create';
subcommand delete => 'UserMaint::Delete';
subcommand list   => 'UserMaint::List';

has _sqlite_filename => (
    is      => 'ro',
    default => 'db/users.db',
);

has _dsn => (
    is      => 'lazy',
    builder => sub {
        my $self = shift;
        return 'dbi:SQLite:dbname=' . $self->_sqlite_filename;
    }
);

has schema => (
    is      => 'lazy',
    builder => sub { 
        my $self = shift;
        return UserMaint::Schema->connect( $self->_dsn, '', '' ); 
    },
);

option debug => (
    is    => 'ro',
    short => 'd',
    doc   => 'show debug output',
);

# This is rather contrived - we could just as easily do this in the
# attribute definitions above.
sub BUILD {
    my( $self, $args ) = @_;
    $self->_create_db unless -e $self->_sqlite_filename;
}

sub _create_db {
    my $self = shift;
    $self->_say_debug( "TRY TO CREATE DB: " . $self->_sqlite_filename );
    my $dbh  = DBI->connect( $self->_dsn );
    $dbh->do( qq{
        CREATE TABLE users (
            user_id   INTEGER NOT NULL PRIMARY KEY,
            username  TEXT    NOT NULL UNIQUE,
            password  TEXT    NOT NULL,
            email     TEXT    NOT NULL,
            real_name TEXT    NOT NULL,
            notes     TEXT    NULL
        );
    } ) or die "Can't create users database: $!";
}

# Display a message in debug mode
sub _say_debug {
    my( $self, $message ) = @_;
    return unless $self->debug;
    say $message;
}

sub run {
    my $self = shift;
    return $self->osprey_usage;
}

1;

