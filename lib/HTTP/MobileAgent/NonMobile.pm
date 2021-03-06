package HTTP::MobileAgent::NonMobile;

use strict;
use base qw(HTTP::MobileAgent);

sub parse {
    my $self = shift;
    my($name, $version) = split m!/!, $self->user_agent;
    $self->{name} = $name;
    $self->{version} = $version;
}

sub is_non_mobile { 1 }

1;
__END__

=head1 NAME

HTTP::MobileAgent::NonMobile - Non-Mobile Agent implementation

=head1 SYNOPSIS

  use HTTP::MobileAgent;

  local $ENV{HTTP_USER_AGENT} = "Mozilla/4.0";
  my $agent = HTTP::MobileAgent->new;

=head1 DESCRIPTION

HTTP::MobileAgent::NonMobile is a subclass of HTTP::MobileAgent, which
implements non-mobile or unimplemented user agents.

=head1 METHODS

See L<HTTP::MobileAgent/"METHODS"> for common methods.

=head1 AUTHOR

Tatsuhiko Miyagawa E<lt>miyagawa@bulknews.netE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<HTTP::MobileAgent>

=cut
