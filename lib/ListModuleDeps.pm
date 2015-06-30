package ListModuleDeps;

use 5.020002;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use ListModuleDeps ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.01';


# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

ListModuleDeps - Perl extension to list dependencies for a given perl module.

=head1 SYNOPSIS

  use ListModuleDeps;
  listRequires('Some::Module')
  listBuildRequires('Some::Module')


=head1 DESCRIPTION

This module attempts to list dependencies for a given perl module,
from RPM building perspective.

1. The tarball for the given module is fetched into a tmp directory (tmpdir can be passed as an arg)
2. Extract tarball, run perl Makefile.PL to generate MYMETA.json
3. Read dependencies from MYMETA.json using CPAN::Meta
4. If MYMETA.json doesn't exist figure dependencies usingother methods

This is written with the intent to split up module dependency resolution done by cpanspec,
which is an ancient script currently in use to figure module dependencies by RPM packagers.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Joel Rebello, E<lt>mail.joelr@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2015 by Joel Rebello

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.20.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
