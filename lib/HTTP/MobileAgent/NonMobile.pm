package HTTP::MobileAgent::NonMobile;

use strict;
use base qw(HTTP::MobileAgent);

# various preferences

sub parse {
    my $self = shift;
}

sub is_mobile { 0 }

1;
__END__

=head1 NAME

HTTP::MobileAgent::NonMobile - Non-Mobile Agent implementation

=head1 SYNOPSIS

  use HTTP::MobileAgent;

  $ENV{HTTP_USER_AGENT} = "Mozilla/4.0"
  my $agent = HTTP::MobileAgent->new;

=head1 DESCRIPTION

HTTP::MobileAgent::NonMobile is a subclass of HTTP::MobileAgent, which
implements non-mobile or unimplemented user agents.

=head1 METHODS

See L<HTTP::MobileAgent/"METHODS"> for common methods. Here are
HTTP::MobileAgent::NonMobile specific methods.

=back

=head1 TODO

=over 4

=back

=head1 AUTHOR

Tatsuhiko Miyagawa E<lt>miyagawa@bulknews.netE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<HTTP::MobileAgent>

=cut
