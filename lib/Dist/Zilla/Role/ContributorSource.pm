package Dist::Zilla::Role::ContributorSource;

# ABSTRACT: Something that finds and provides contributors.

use Moose::Role;
use namespace::autoclean;
use MooseX::AttributeShortcuts;

=required_method contributors

Returns a list of the contributors sourced by this... thing.  The list should
be comprised of L<Dist::Zilla::Stash::Contributors::Contributor> objects.

=cut

requires 'contributors';


!!42;
__END__

=head1 SYNOPSIS

    # in your Dist::Zilla thing...
    with 'Dist::Zilla::Role::ContributorSource';

    sub contributors { ... }

=head1 DESCRIPTION

A simple interface role to define what plugins provide information about the
contributors to the distribution, much as L<Dist::Zilla::Role::PrereqSource>
does for distribution prerequisites.

=head1 SEE ALSO

L<Dist::Zilla::Stash::Contributors>

=cut
