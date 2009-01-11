package Site::Com::StackOverflow;
use strict;
use warnings;
use version;
our $VERSION=qv('0.1');

use Moose 0.64; 
use MooseX::Method::Signatures 0.6; 

method ns ( Str $url! ){
    $url = '::' . $url if( (length $url )== 0 );
    $pkg = 'Site::Com::Stackoverlow::' . $url;
    return sub { 
        return $pkg->new(@_);
    };
}
method uri {
    return 'http://stackoverflow.com/'; 
}

1;

