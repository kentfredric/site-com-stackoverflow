package Site::Com::StackOverflow::User::Reputation;

use MooseX::Declare 0.03;
use Data::Dumper;
use version;
our $VERSION = qv('0.1');

class Site::Com::StackOverflow::User::Reputation extends
  Site::Com::StackOverflow::User {

    override uri( DateTime $from!, DateTime $to! ) {
        return super() . '/' . $from . '/' . $to ;
    };

  };
1;

