 #!/usr/bin/env perl
 
use warnings;
use strict;

use Curses::UI;

# activate color-support
my $cui = new Curses::UI( -color_support => 1 );



# menubar
my @menu = (
    { -label => 'File',
      -submenu => [
      { -label => 'Exit           ^Q', -value => \&exit_dialog }
      ]
    };
);


my $menu = $cui->add(
    'menu', 'Menubar',
    -menu => \@menu,
    -fg => "red",
    -tfg => "green",
);

# widget
my $texteditor = $why->add(
    "text", "textEditor",
    -text => "Here is some text\n"
     . "And some more"
);
