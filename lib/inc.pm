package inc;
use 5.005003;
use strict;
use File::Spec;
$inc::VERSION = '0.01';

sub import {
    my $class = shift;
    my $name = shift;
    return unless $name;
    my $base;
    if ($base = $ENV{PERL_INC_BASE}) {
        use_lib(File::Spec->catfile($base, $name));
    }
}

sub use_lib {
    my $base = File::Spec->canonpath(shift);
    eval "use lib '$base'; 1" or die $@;
}

1;

=head1 NAME

inc - Add Named Resources to @INC

=head1 SYNOPSIS

    use inc 'Plagger';   # Make sure @INC uses the Plagger deps install tree

=head1 DESCRIPTION

C<inc> is a module to add named Perl module install paths to @INC, in a
concise, generic and portable way.

It is meant for projects that take advantage of external dependency
trees like those provided by PMIR.

=head1 NOTE

This module is in its infancy. Please don't use it yet.

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2007. Ingy döt Net. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
