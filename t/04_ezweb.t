use strict;
use Test::More tests => 460;

BEGIN { use_ok 'HTTP::MobileAgent' }

my @Tests = (
    # ua, version, device_id, server, xhtml_compliant, comment, is_wap1, is_wap2
    [ 'UP.Browser/3.01-HI01 UP.Link/3.4.5.2',
      '3.01', 'HI01', 'UP.Link/3.4.5.2', undef, undef, 1, undef ],
    [ 'KDDI-TS21 UP.Browser/6.0.2.276 (GUI) MMP/1.1',
      '6.0.2.276 (GUI)', 'TS21', 'MMP/1.1', 1, undef, undef, 1 ],
    [ 'UP.Browser/3.04-TS14 UP.Link/3.4.4 (Google WAP Proxy/1.0)',
      '3.04', 'TS14', 'UP.Link/3.4.4', undef, 'Google WAP Proxy/1.0', 1, undef ],
);

for (@Tests) {
    my($ua, @data) = @$_;
    my $agent = HTTP::MobileAgent->new($ua);
    isa_ok $agent, 'HTTP::MobileAgent';
    isa_ok $agent, 'HTTP::MobileAgent::EZweb';
    is $agent->name, 'UP.Browser';
    ok !$agent->is_docomo && !$agent->is_j_phone && $agent->is_ezweb;
    is $agent->user_agent, $ua,		"ua is $ua";

    is $agent->version, $data[0];
    is $agent->device_id, $data[1];
    is $agent->server, $data[2];
    is $agent->xhtml_compliant, $data[3];
    is $agent->comment, $data[4];
    ok $agent->is_wap1 if $data[5];
    ok $agent->is_wap2 if $data[6];
}

while (<DATA>) {
    next if /^#/;
    chomp;
    local $ENV{HTTP_USER_AGENT} = $_;
    my $agent = HTTP::MobileAgent->new;
    isa_ok $agent, 'HTTP::MobileAgent', "$_";
    is $agent->name, 'UP.Browser';
    ok !$agent->is_docomo && !$agent->is_j_phone && $agent->is_ezweb;
}

__END__
KDDI-CA21 UP.Browser/6.0.6 (GUI) MMP/1.1
KDDI-CA21 UP.Browser/6.0.7.1 (GUI) MMP/1.1
KDDI-HI21 UP.Browser/6.0.2.213 (GUI) MMP/1.1
KDDI-HI21 UP.Browser/6.0.2.273 (GUI) MMP/1.1
KDDI-HI21 UP.Browser/6.0.6 (GUI) MMP/1.1
KDDI-KC21 UP.Browser/6.0.2.273 (GUI) MMP/1.1
KDDI-KC21 UP.Browser/6.0.5 (GUI) MMP/1.1
KDDI-KC21 UP.Browser/6.0.6 (GUI) MMP/1.1
KDDI-MA21 UP.Browser/6.0.2.276 (GUI) MMP/1.1
KDDI-MA21 UP.Browser/6.0.5 (GUI) MMP/1.1
KDDI-MA21 UP.Browser/6.0.6 (GUI) MMP/1.1
KDDI-MA21 UP.Browser/6.0.7 (GUI) MMP/1.1
KDDI-SA21 UP.Browser/6.0.6 (GUI) MMP/1.1
KDDI-SA21 UP.Browser/6.0.7 (GUI) MMP/1.1
KDDI-SA21 UP.Browser/6.0.7.1 (GUI) MMP/1.1
KDDI-SA22 UP.Browser/6.0.7.2 (GUI) MMP/1.1
KDDI-SN21 UP.Browser/6.0.7 (GUI) MMP/1.1
KDDI-SN22 UP.Browser/6.0.7 (GUI) MMP/1.1
KDDI-TS21 UP.Browser/6.0.2.273 (GUI) MMP/1.1
KDDI-TS21 UP.Browser/6.0.2.276 (GUI) MMP/1.1
KDDI-TS21 UP.Browser/6.0.5.287 (GUI) MMP/1.1
KDDI-TS21 UP.Browser/6.0.6 (GUI) MMP/1.1
KDDI-TS22 UP.Browser/6.0.6 (GUI) MMP/1.1
KDDI-TS22 UP.Browser/6.0.7.1 (GUI) MMP/1.1
UP.Browser/3.01-HI01 UP.Link/3.4.5.2
UP.Browser/3.01-HI02 UP.Link/3.2.1.2
UP.Browser/3.03-HI11 UP.Link/3.2.2.7c
UP.Browser/3.03-HI11 UP.Link/3.4.4
UP.Browser/3.03-KCT3 UP.Link/3.4.4
UP.Browser/3.03-SYC1 UP.Link/3.4.4
UP.Browser/3.03-TS11 UP.Link/3.2.2.7c
UP.Browser/3.03-TST1 UP.Link/3.2.2.7c
UP.Browser/3.04-CA11 UP.Link/3.2.2.7c
UP.Browser/3.04-CA11 UP.Link/3.3.0.3
UP.Browser/3.04-CA11 UP.Link/3.3.0.5
UP.Browser/3.04-CA11 UP.Link/3.4.4
UP.Browser/3.04-CA12 UP.Link/3.4.4
UP.Browser/3.04-CA13 UP.Link/3.3.0.5
UP.Browser/3.04-CA13 UP.Link/3.4.4
UP.Browser/3.04-CA14 UP.Link/3.4.4
UP.Browser/3.04-DN11 UP.Link/3.3.0.1
UP.Browser/3.04-DN11 UP.Link/3.4.4
UP.Browser/3.04-HI11 UP.Link/3.2.2.7c
UP.Browser/3.04-HI11 UP.Link/3.4.4
UP.Browser/3.04-HI12 UP.Link/3.2.2.7c
UP.Browser/3.04-HI12 UP.Link/3.3.0.3
UP.Browser/3.04-HI12 UP.Link/3.4.4
UP.Browser/3.04-HI12 UP.Link/3.4.4 (Google WAP Proxy/1.0)
UP.Browser/3.04-HI13 UP.Link/3.4.4
UP.Browser/3.04-HI14 UP.Link/3.4.4
UP.Browser/3.04-HI14 UP.Link/3.4.5.2
UP.Browser/3.04-KC11 UP.Link/3.4.4
UP.Browser/3.04-KC12 UP.Link/3.4.4
UP.Browser/3.04-KC13 UP.Link/3.4.4
UP.Browser/3.04-KC14 UP.Link/3.4.4
UP.Browser/3.04-KC15 UP.Link/3.4.4
UP.Browser/3.04-KCT4 UP.Link/3.4.4
UP.Browser/3.04-KCT5 UP.Link/3.4.4
UP.Browser/3.04-KCT6 UP.Link/3.4.4
UP.Browser/3.04-KCT7 UP.Link/3.4.4
UP.Browser/3.04-KCT8 UP.Link/3.4.4
UP.Browser/3.04-KCT9 UP.Link/3.4.4
UP.Browser/3.04-MA11 UP.Link/3.2.2.7c
UP.Browser/3.04-MA11 UP.Link/3.3.0.3
UP.Browser/3.04-MA11 UP.Link/3.3.0.5
UP.Browser/3.04-MA11 UP.Link/3.4.4
UP.Browser/3.04-MA12 UP.Link/3.2.2.7c
UP.Browser/3.04-MA12 UP.Link/3.3.0.5
UP.Browser/3.04-MA12 UP.Link/3.4.4
UP.Browser/3.04-MA12 UP.Link/3.4.4 (Google WAP Proxy/1.0)
UP.Browser/3.04-MA13 UP.Link/3.3.0.5
UP.Browser/3.04-MA13 UP.Link/3.4.4
UP.Browser/3.04-MA13 UP.Link/3.4.4 (Google WAP Proxy/1.0)
UP.Browser/3.04-MA13 UP.Link/3.4.5.2
UP.Browser/3.04-MAC2 UP.Link/3.4.4
UP.Browser/3.04-MAI1 UP.Link/3.2.2.7c
UP.Browser/3.04-MAI2 UP.Link/3.2.2.7c
UP.Browser/3.04-MAI2 UP.Link/3.4.4
UP.Browser/3.04-MAT1 UP.Link/3.3.0.3
UP.Browser/3.04-MAT3 UP.Link/3.4.4
UP.Browser/3.04-MIT1 UP.Link/3.3.0.3
UP.Browser/3.04-MIT1 UP.Link/3.4.4
UP.Browser/3.04-MIT1 UP.Link/3.4.5.2
UP.Browser/3.04-SN11 UP.Link/3.2.2.7c
UP.Browser/3.04-SN11 UP.Link/3.3.0.3
UP.Browser/3.04-SN11 UP.Link/3.4.4
UP.Browser/3.04-SN11 UP.Link/3.4.4 (Google WAP Proxy/1.0)
UP.Browser/3.04-SN12 UP.Link/3.3.0.1
UP.Browser/3.04-SN12 UP.Link/3.3.0.5
UP.Browser/3.04-SN12 UP.Link/3.4.4
UP.Browser/3.04-SN12 UP.Link/3.4.5.2
UP.Browser/3.04-SN13 UP.Link/3.3.0.3
UP.Browser/3.04-SN13 UP.Link/3.3.0.5
UP.Browser/3.04-SN13 UP.Link/3.4.4
UP.Browser/3.04-SN14 UP.Link/3.4.4
UP.Browser/3.04-SN14 UP.Link/3.4.5.2
UP.Browser/3.04-SN15 UP.Link/3.4.4
UP.Browser/3.04-SN15 UP.Link/3.4.5.2
UP.Browser/3.04-SN16 UP.Link/3.4.4
UP.Browser/3.04-SN17 UP.Link/3.4.4
UP.Browser/3.04-SNI1 UP.Link/3.4.4
UP.Browser/3.04-ST11 UP.Link/3.3.0.1
UP.Browser/3.04-ST11 UP.Link/3.3.0.5
UP.Browser/3.04-ST11 UP.Link/3.4.4
UP.Browser/3.04-ST12 UP.Link/3.4.4
UP.Browser/3.04-ST13 UP.Link/3.4.4
UP.Browser/3.04-SY11 UP.Link/3.2.2.7c
UP.Browser/3.04-SY11 UP.Link/3.4.4
UP.Browser/3.04-SY12 UP.Link/3.3.0.1
UP.Browser/3.04-SY12 UP.Link/3.3.0.3
UP.Browser/3.04-SY12 UP.Link/3.3.0.5
UP.Browser/3.04-SY12 UP.Link/3.4.4
UP.Browser/3.04-SY12 UP.Link/3.4.5.2
UP.Browser/3.04-SY12 UP.Link/3.4.5.6
UP.Browser/3.04-SY13 UP.Link/3.4.4
UP.Browser/3.04-SY14 UP.Link/3.4.4
UP.Browser/3.04-SY15 UP.Link/3.4.4
UP.Browser/3.04-SYT3 UP.Link/3.4.4
UP.Browser/3.04-SYT3 UP.Link/3.4.5.2
UP.Browser/3.04-TS11 UP.Link/3.2.2.7c
UP.Browser/3.04-TS11 UP.Link/3.3.0.5
UP.Browser/3.04-TS11 UP.Link/3.4.4
UP.Browser/3.04-TS12 UP.Link/3.2.2.7c
UP.Browser/3.04-TS12 UP.Link/3.3.0.1
UP.Browser/3.04-TS12 UP.Link/3.3.0.3
UP.Browser/3.04-TS12 UP.Link/3.3.0.5
UP.Browser/3.04-TS12 UP.Link/3.4.4
UP.Browser/3.04-TS13 UP.Link/3.4.4
UP.Browser/3.04-TS14 UP.Link/3.4.4
UP.Browser/3.04-TS14 UP.Link/3.4.4 (Google WAP Proxy/1.0)
UP.Browser/3.04-TS14 UP.Link/3.4.5.2
UP.Browser/3.04-TSI1 UP.Link/3.2.2.7c
UP.Browser/3.04-TST3 UP.Link/3.4.4
UP.Browser/3.04-TST4 UP.Link/3.4.4
UP.Browser/3.04-TST4 UP.Link/3.4.5.2
UP.Browser/3.04-TST4 UP.Link/3.4.5.6
UP.Browser/3.04-TST5 UP.Link/3.4.4
UP.Browser/3.1-NT95 UP.Link/3.2
UP.Browser/3.1-SY11 UP.Link/3.2
UP.Browser/3.1-UPG1 UP.Link/3.2
UP.Browser/3.2.9.1-SA12 UP.Link/3.2
UP.Browser/3.2.9.1-UPG1 UP.Link/3.2
