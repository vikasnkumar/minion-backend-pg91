use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Minion::Backend::Pg91',
    VERSION_FROM => 'lib/Minion/Backend/Pg91.pm',
    ($] >= 5.005 ?
        (ABSTRACT => 'Minion::Backend for Postgresql 9.1',
        AUTHOR => 'Vikas N Kumar <vikas@cpan.org>') : ()),
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    PREREQ_PM => {
        Minion => '4.04',
        'Mojo::Pg' => '2.18',
        Mojolicious => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
        'Sys::Hostname' => 0,
        'Time::HiRes' => 0,
    },
    META_MERGE => {
        resources => {
            repository => 'https://github.com/vikasnkumar/minion-backend-pg91',
        },
    },
    LICENSE => 'perl',
);
