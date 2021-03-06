package HTTP::MobileAgent::DoCoMoDisplayMap;
# This file is autogenerated by makedocomomap
# in HTTP-MobileAgent distribution

use strict;
require Exporter;
use base qw(Exporter);

use vars qw(@EXPORT_OK $DisplayMap);
@EXPORT_OK = qw($DisplayMap);

BEGIN {
    if ($ENV{DOCOMO_MAP}) {
        eval q{
            require XML::Simple;
            my $xml = XML::Simple->new;
            $DisplayMap = $xml->XMLin($ENV{DOCOMO_MAP});
        };
        warn "using normal hash map: $@" if $@;
    }
}

$DisplayMap ||= {
  'N251IS' => {
    'width' => 132,
    'height' => 140,
    'depth' => 65536,
    'color' => 1
  },
  'SO502I' => {
    'width' => 120,
    'height' => 120,
    'depth' => 4,
    'color' => ''
  },
  'D504I' => {
    'width' => 132,
    'height' => 144,
    'depth' => 262144,
    'color' => 1
  },
  'SO502IWM' => {
    'width' => 120,
    'height' => 113,
    'depth' => 256,
    'color' => 1
  },
  'F504I' => {
    'width' => 132,
    'height' => 136,
    'depth' => 65536,
    'color' => 1
  },
  'D209I' => {
    'width' => 96,
    'height' => 90,
    'depth' => 256,
    'color' => 1
  },
  'F209I' => {
    'width' => 96,
    'height' => 91,
    'depth' => 256,
    'color' => 1
  },
  'P2102V' => {
    'width' => 176,
    'height' => 198,
    'depth' => 262144,
    'color' => 1
  },
  'F661I' => {
    'width' => 132,
    'height' => 136,
    'depth' => 65536,
    'color' => 1
  },
  'N504I' => {
    'width' => 160,
    'height' => 180,
    'depth' => 65536,
    'color' => 1
  },
  'P504I' => {
    'width' => 132,
    'height' => 144,
    'depth' => 65536,
    'color' => 1
  },
  'N209I' => {
    'width' => 108,
    'height' => 82,
    'depth' => 4,
    'color' => ''
  },
  'P209I' => {
    'width' => 96,
    'height' => 87,
    'depth' => 4,
    'color' => ''
  },
  'R209I' => {
    'width' => 96,
    'height' => 72,
    'depth' => 4,
    'color' => ''
  },
  'N2701' => {
    'width' => 176,
    'height' => 198,
    'depth' => 65536,
    'color' => 1
  },
  'F503IS' => {
    'width' => 120,
    'height' => 130,
    'depth' => 4096,
    'color' => 1
  },
  'SO212I' => {
    'width' => 120,
    'height' => 112,
    'depth' => 65536,
    'color' => 1
  },
  'D210I' => {
    'width' => 96,
    'height' => 91,
    'depth' => 256,
    'color' => 1
  },
  'N503IS' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4096,
    'color' => 1
  },
  'F210I' => {
    'width' => 96,
    'height' => 113,
    'depth' => 256,
    'color' => 1
  },
  'SO503I' => {
    'width' => 120,
    'height' => 113,
    'depth' => 65536,
    'color' => 1
  },
  'D501I' => {
    'width' => 96,
    'height' => 72,
    'depth' => 2,
    'color' => ''
  },
  'P504IS' => {
    'width' => 132,
    'height' => 144,
    'depth' => 65536,
    'color' => 1
  },
  'F501I' => {
    'width' => 112,
    'height' => 84,
    'depth' => 2,
    'color' => ''
  },
  'D505I' => {
    'width' => 240,
    'height' => 270,
    'depth' => 262144,
    'color' => 1
  },
  'F505I' => {
    'width' => 240,
    'height' => 268,
    'depth' => 262144,
    'color' => 1
  },
  'N210I' => {
    'width' => 118,
    'height' => 113,
    'depth' => 256,
    'color' => 1
  },
  'P210I' => {
    'width' => 96,
    'height' => 91,
    'depth' => 256,
    'color' => 1
  },
  'N501I' => {
    'width' => 118,
    'height' => 128,
    'depth' => 2,
    'color' => ''
  },
  'P501I' => {
    'width' => 96,
    'height' => 120,
    'depth' => 2,
    'color' => ''
  },
  'N505I' => {
    'width' => 240,
    'height' => 270,
    'depth' => 262144,
    'color' => 1
  },
  'P505I' => {
    'width' => 240,
    'height' => 266,
    'depth' => 65536,
    'color' => 1
  },
  'D251IS' => {
    'width' => 132,
    'height' => 144,
    'depth' => 262144,
    'color' => 1
  },
  'KO209I' => {
    'width' => 96,
    'height' => 96,
    'depth' => 256,
    'color' => 1
  },
  'F671IS' => {
    'width' => 160,
    'height' => 120,
    'depth' => 65536,
    'color' => 1
  },
  'P211IS' => {
    'width' => 120,
    'height' => 130,
    'depth' => 65536,
    'color' => 1
  },
  'F2102V' => {
    'width' => 176,
    'height' => 182,
    'depth' => 65536,
    'color' => 1
  },
  'D211I' => {
    'width' => 100,
    'height' => 91,
    'depth' => 4096,
    'color' => 1
  },
  'F211I' => {
    'width' => 96,
    'height' => 113,
    'depth' => 4096,
    'color' => 1
  },
  'P251IS' => {
    'width' => 132,
    'height' => 144,
    'depth' => 65536,
    'color' => 1
  },
  'D502I' => {
    'width' => 96,
    'height' => 90,
    'depth' => 256,
    'color' => 1
  },
  'SO504I' => {
    'width' => 120,
    'height' => 112,
    'depth' => 65536,
    'color' => 1
  },
  'D251I' => {
    'width' => 132,
    'height' => 144,
    'depth' => 262144,
    'color' => 1
  },
  'F502I' => {
    'width' => 96,
    'height' => 91,
    'depth' => 256,
    'color' => 1
  },
  'F251I' => {
    'width' => 132,
    'height' => 140,
    'depth' => 65536,
    'color' => 1
  },
  'N2102V' => {
    'width' => 176,
    'height' => 198,
    'depth' => 65536,
    'color' => 1
  },
  'N211I' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4096,
    'color' => 1
  },
  'F671I' => {
    'width' => 120,
    'height' => 126,
    'depth' => 256,
    'color' => 1
  },
  'P211I' => {
    'width' => 120,
    'height' => 130,
    'depth' => 65536,
    'color' => 1
  },
  'N502I' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4,
    'color' => ''
  },
  'N251I' => {
    'width' => 132,
    'height' => 140,
    'depth' => 65536,
    'color' => 1
  },
  'R211I' => {
    'width' => 96,
    'height' => 98,
    'depth' => 4096,
    'color' => 1
  },
  'SH251IS' => {
    'width' => 176,
    'height' => 187,
    'depth' => 65536,
    'color' => 1
  },
  'P502I' => {
    'width' => 96,
    'height' => 117,
    'depth' => 4,
    'color' => ''
  },
  'N2001' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4096,
    'color' => 1
  },
  'N821I' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4,
    'color' => ''
  },
  'N2002' => {
    'width' => 118,
    'height' => 128,
    'depth' => 65536,
    'color' => 1
  },
  'P821I' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4,
    'color' => ''
  },
  'P2002' => {
    'width' => 118,
    'height' => 128,
    'depth' => 65536,
    'color' => 1
  },
  'KO210I' => {
    'width' => 96,
    'height' => 96,
    'depth' => 256,
    'color' => 1
  },
  'SO503IS' => {
    'width' => 120,
    'height' => 113,
    'depth' => 65536,
    'color' => 1
  },
  'D503IS' => {
    'width' => 132,
    'height' => 126,
    'depth' => 4096,
    'color' => 1
  },
  'F502IT' => {
    'width' => 96,
    'height' => 91,
    'depth' => 256,
    'color' => 1
  },
  'NM502I' => {
    'width' => 111,
    'height' => 106,
    'depth' => 2,
    'color' => ''
  },
  'R691I' => {
    'width' => 96,
    'height' => 72,
    'depth' => 4,
    'color' => ''
  },
  'F504IS' => {
    'width' => 132,
    'height' => 136,
    'depth' => 65536,
    'color' => 1
  },
  'SH505I' => {
    'width' => 240,
    'height' => 252,
    'depth' => 262144,
    'color' => 1
  },
  'SO210I' => {
    'width' => 120,
    'height' => 113,
    'depth' => 256,
    'color' => 1
  },
  'D2101V' => {
    'width' => 120,
    'height' => 130,
    'depth' => 262144,
    'color' => 1
  },
  'N502IT' => {
    'width' => 118,
    'height' => 128,
    'depth' => 256,
    'color' => 1
  },
  'N504IS' => {
    'width' => 160,
    'height' => 180,
    'depth' => 65536,
    'color' => 1
  },
  'F212I' => {
    'width' => 132,
    'height' => 136,
    'depth' => 65536,
    'color' => 1
  },
  'P503IS' => {
    'width' => 120,
    'height' => 130,
    'depth' => 256,
    'color' => 1
  },
  'SO505I' => {
    'width' => 256,
    'height' => 240,
    'depth' => 262144,
    'color' => 1
  },
  'D503I' => {
    'width' => 132,
    'height' => 126,
    'depth' => 4096,
    'color' => 1
  },
  'F503I' => {
    'width' => 120,
    'height' => 130,
    'depth' => 256,
    'color' => 1
  },
  'P209IS' => {
    'width' => 96,
    'height' => 87,
    'depth' => 256,
    'color' => 1
  },
  'P2101V' => {
    'width' => 163,
    'height' => 182,
    'depth' => 262144,
    'color' => 1
  },
  'F2051' => {
    'width' => 176,
    'height' => 182,
    'depth' => 65536,
    'color' => 1
  },
  'T2101V' => {
    'width' => 176,
    'height' => 144,
    'depth' => 262144,
    'color' => 1
  },
  'N503I' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4096,
    'color' => 1
  },
  'P503I' => {
    'width' => 120,
    'height' => 130,
    'depth' => 256,
    'color' => 1
  },
  'SH2101V' => {
    'width' => 800,
    'height' => 600,
    'depth' => 65536,
    'color' => 1
  },
  'N2051' => {
    'width' => 176,
    'height' => 198,
    'depth' => 65536,
    'color' => 1
  },
  'ER209I' => {
    'width' => 120,
    'height' => 72,
    'depth' => 2,
    'color' => ''
  },
  'SH251I' => {
    'width' => 120,
    'height' => 130,
    'depth' => 65536,
    'color' => 1
  },
  'R692I' => {
    'width' => 96,
    'height' => 98,
    'depth' => 4096,
    'color' => 1
  },
  'N211IS' => {
    'width' => 118,
    'height' => 128,
    'depth' => 4096,
    'color' => 1
  },
  'SH821I' => {
    'width' => 96,
    'height' => 78,
    'depth' => 256,
    'color' => 1
  },
  'SO211I' => {
    'width' => 120,
    'height' => 112,
    'depth' => 4096,
    'color' => 1
  },
  'D252I' => {
    'width' => 176,
    'height' => 198,
    'depth' => 262144,
    'color' => 1
  },
  'SH252I' => {
    'width' => 240,
    'height' => 252,
    'depth' => 262144,
    'color' => 1
  },
  'P252I' => {
    'width' => 132,
    'height' => 144,
    'depth' => 65536,
    'color' => 1
  },
  'N505IS' => {
    'width' => 240,
    'height' => 270,
    'depth' => 262144,
    'color' => 1
  },
  'D505IS' => {
    'width' => 240,
    'height' => 270,
    'depth' => 262144,
    'color' => 1
  },
  'P505IS' => {
    'width' => 240,
    'height' => 266,
    'depth' => 65536,
    'color' => 1
  },
};


1;
