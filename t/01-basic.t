#!perl
use English;
use Cwd 'abs_path';
use File::Basename;
use Test::More tests => 3;
use relative_lib '.';

my $dir_path = dirname(abs_path(__FILE__));
import relative_lib $dir_path;
my $inc_size = scalar @INC;
import relative_lib '.';  # Shouldn't cause @INC to grow
is(scalar @INC, $inc_size);

import relative_lib './testing';
is(scalar @INC, $inc_size+1); # Should cause @INC to grow
require MyMod;
no warnings 'once';
is($MyMod::good, 1);

