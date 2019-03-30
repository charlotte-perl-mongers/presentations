#!/usr/bin/env perl

use v5.26;
use Getopt::Long;
use Pod::Usage;

my $verbose = 0;
my $force   = 0;
my $iters   = 0;

GetOptions(
    'v|verbose' => \$verbose,
    'f|force'   => \$force,
    'i|iters=i' => \$iters,
    'h|help'    => sub{ pod2usage(1); },
) or pod2usage(2);

exit blort();

sub blort {
    say "blorting with the following options:";
    say "- Force: $force";
    say "- Verbose: $verbose";
    say "- Iters: $iters";

    return 0;
}

=pod

=head1 NAME

blort-4.pl - All your blort are belong to us!

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

=back

=cut

