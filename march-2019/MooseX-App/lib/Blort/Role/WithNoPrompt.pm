package Blort::Role::WithNoPrompt;

use v5.26;
use MooseX::App::Role;
use feature 'signatures';
no warnings 'experimental::signatures';

option 'noprompt' => (
    is            => 'rw',
    isa           => 'Bool',
    required      => 0,
    documentation => "Disable Y/N prompts and default to Y. Use with caution!",
    cmd_aliases   => [qw(n)],
);

1;
