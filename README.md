relative_lib - "use lib" relative to the file issuing the call
============================================================================

`use lib` works relative the program issuing the call.  If you want
`use lib` to work relative to the file that the `use lib` is in, use
this package.


Example
-------

```perl
      use relative_lib '.';
      use MyModule; # inside the directory this file is in, taking
                    # precidence over any other MyModule's installed.
```

Discussion
-----------

I often run out of uninstalled source; often there is some earlier
version of the package installed as well.

Most of my Perl modules contain demo code at the end of the file. Each
file or module needs to pull in other modules it needs relative to
itself. Ideally it should not matter what directory I start out in when
I invoke one of the Modules.

Credits
-------

The motivation for this comes from require_relative of Ruby 1.9 and
beyond.  The style of programming where demo code is at the bottom of
the file comes from reading the Dive into Python describing the 2.x
series.

Other stuff
-----------

Author:   Rocky Bernstein <rocky@cpan.org>

License:  Copyright (c) 2011 Rocky Bernstein

Warranty
--------

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
