#!perl
use English;
use Test::More tests => 2;

BEGIN {
	use_ok( 'relative_lib' );
}

ok(defined($relative_lib::VERSION));

diag( "Testing relative_lib $relative_lib::VERSION, Perl $], 
      $EXECUTABLE_NAME" );
