use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'inc',
    VERSION_FROM      => 'lib/inc.pm',
    LICENSE           => 'perl',

    (
        $] >= 5.005
        ? (
            ABSTRACT_FROM  => 'lib/inc.pm',
            AUTHOR => 'Ingy döt Net <ingy@cpan.org>',
        )
        : ()
    ),
);

