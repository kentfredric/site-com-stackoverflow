package Site::Com::StackOverflow;
use MooseX::Declare 0.03;

use version;
our $VERSION = qv('0.1');

class Site::Com::StackOverflow {

    method ns( Str $url! ) {
        $url = '::' . $url
          if ( ( length $url ) == 0 );
          my $pkg = 'Site::Com::StackOverflow::' . $url;
          return sub {
            eval 'use ' . $pkg;
            if ($@) {
                die $@;
            }
            return $pkg->new(@_);
          };
    };

    method uri {
        return 'http://stackoverflow.com/';
    };

};
1;

