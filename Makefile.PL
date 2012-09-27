## no critic (RCS,VERSION)

use strict;
use warnings;

use ExtUtils::MakeMaker;

## no critic (may require interpolation)
WriteMakefile(
    NAME               => 'JSON::Tiny',
    AUTHOR             => q{David Oswald <davido [@at] cpan [d.o.t] org>},
    VERSION_FROM       => 'lib/JSON/Tiny.pm',
    ABSTRACT_FROM      => 'lib/JSON/Tiny.pm',
    LICENSE            => 'perl',
    MIN_PERL_VERSION   => '5.010000',
    PL_FILES           => {},
    BUILD_REQUIRES => {
        'Test::More' => '0.98',             # Core, but updated version.
	'English'    => '0',                # Core.
    },
    PREREQ_PM => {
        'Scalar::Util' => '0',              # Core: Being explicit.
        'B'            => '0',              # Core.
        'Encode'       => '0',              # Core.
    },
    META_MERGE => {
        provides => {
            'JSON::Tiny' => {
                file    => 'lib/JSON/Tiny.pm',
                version => '0.01'
            },
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'List-BinarySearch-*' },
);