use Test::More tests => 1;
use lib 'lib';
use File::Spec;

BEGIN {
    $ENV{PERL_INC_BASE} = 'inc///base';
}
use inc 'Foo';

is @INC[0], File::Spec->canonpath(File::Spec->catfile(qw(inc base Foo))),
    '@INC is properly modified';
