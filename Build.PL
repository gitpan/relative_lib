#!/usr/bin/env perl
use strict; use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'relative_lib',
    license             => 'perl',
    dist_abstract       => 
    'Like "use lib <relative-path>" but relative to the file executing this command instead of the main program.',
    dist_author         => 'Rocky Bernstein <rocky@cpan.org>',
    dist_version_from   => 'lib/relative_lib.pm',
    build_requires => {
        'Test::More'    => 0,
    },
    configure_requires => {
        'Module::Build' => '0.38',
    },
    # add_to_cleanup      => [ 'relative-*' ],
);

$builder->create_build_script();
