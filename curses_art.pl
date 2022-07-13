 #!/usr/bin/env perl
 
use warnings;
use strict;

use Curses::UI;
use lib '.';
use phoenix qw();


## create a new C::UI object
# objetions: clear on exit, colors
my $cui = Curses::UI->new( -clear_on_exit => 1, -color_support => 1);

# create menu
my @menu = (
    { -label => 'File',
      -submenu => [
      { -label => 'Exit       ^Q', -value => \&exit_dialog  }
      ]
    },   
);


# create Input-Window
my $why = $cui->dialog(
    -message => "Do you want to go to hell?",
    -buttons => ['yes', 'no'],
    -values  => [0, 1],
    -titel   => "Sense?",
    # add colors
    -bfg => "red",
    -fg => "red",
);



#while ($why||1) {
#    print "summoning the holy bird!\n";
#    my $bird = new phoenix("red", "flying");
#    my $color = $bird->getColor();
#    my $pose = $bird->getPosition();
 #   print "$color\n$pose\n";
 #   my $showtime = $bird->showbird();
    
    #return;

#};


# add dialogs
sub exit_dialog()
{
        my $return = $cui->dialog(
                -message   => "Do you realy want to leave on and quit?",
                -title     => "Are you sure???", 
                -buttons   => ['yes', 'no'],
 
        );
    exit(0) if $return;
};




