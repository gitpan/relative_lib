use strict; 
use File::Spec; use File::Basename; use Cwd;
no warnings;
package relative_lib;
no warnings 'redefine';

use vars qw($VERSION);
use version; $VERSION = '0.3';

sub import {
    if (2 == scalar @_) {
	my ($name, $dir_suffix) = @_;
	my ($package, $filename, $line) = caller(0);
	my $dir = File::Basename::dirname($filename);
	my $full_path = 
	    File::Spec->canonpath(File::Spec->catfile($dir, $dir_suffix));
	if ($full_path) {
	    eval sprintf "use lib '%s'", $full_path;
	}
    }
}; 

unless(caller) {
    # The code is actually broken by chdir below if the program file
    # is specified in a relative way. This is because caller() or
    # __FILE__ can contain paths relative to an initial cwd that I don't
    # know how to get.
    chdir '..' if File::Spec->file_name_is_absolute(__FILE__);
    import relative_lib '.';
    import relative_lib '.';
    import relative_lib '..';
    print $INC[0], "\n";
    print $INC[1], "\n";
}
1;

