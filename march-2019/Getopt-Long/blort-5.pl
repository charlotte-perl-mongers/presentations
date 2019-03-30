#!/usr/bin/env perl

use v5.26;
use Getopt::Long;
use Pod::Usage;

GetOptions(
    'v|verbose' => \my $verbose, # declare var inline
    'f|force'   => \my $force,
    'i|iters=i' => \my $iters,
    'd|devs=s'  => \my @devs,    # no default value!
    'h|help'    => sub{ pod2usage(1); },
) or pod2usage(2);

exit blort();

sub blort {
    @devs = split( /,/, join( ',', @devs ));

    say "blorting with the following options:";
    say "- Force: $force";
    say "- Verbose: $verbose";
    say "- Iters: $iters";
    say '- Devs: ' . join( ', ', @devs );

    return 0;
}

=pod

=head1 NAME

blort-5.pl - All your blort are belong to us!

=head1 SYNOPSIS

    blort.pl [-h | --help] [-v | --verbose] [-f | --force] [-i | --iters #]

=head1 DESCRIPTION

F<blort-4.pl> is for all your blorting needs.

=head1 OPTIONS

=over 4

=item * -h / --help

Get some help.

=item * -f / --force

Forcibly blort.

=item * -v / --verbose

Verbosely blort.

=item * -i / --iters

How many times should we blort?

=item * -d / --devs

Who is doing the blorting?

=back

=cut

