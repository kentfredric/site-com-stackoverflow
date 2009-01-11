package Site::Com::StackOverflow;
use strict;
use warnings;
use version;
our $VERSION=qv('0.1');

use Moose 0.64; 
use MooseX::Method::Signatures 0.06; 

method ns ( Str $url! ){
    $url = '::' . $url if( (length $url )== 0 );
    my $pkg = 'Site::Com::StackOverflow::' . $url;
    return sub { 
        eval 'use ' . $pkg;
        return $pkg->new(@_);
    };
};

method uri {
    return 'http://stackoverflow.com/'; 
};

1;

