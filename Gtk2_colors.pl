#!/usr/bin/perl


## declaration of gtk2 window child for application 
## different colors usw..

## 16-bit RGB values, saturation 0 - 65535
# color = Gtk2::Gdk::Color->new ($red, $green, $blue, $pixel=0)

use strict;
use warnings;

use Gtk2;

$i = 1;

print "Package name ; " , __PACKAGE__ , " $i\n";

package gtkcolors;





## declare colors
my $beige = Gtk2::Gdk::Color->new (0xFFFF,0xFFFF,0xCCCC);
my $azul  = Gtk2::Gdk::Color->new (0,0,0xCCCC);
my $rojo  = Gtk2::Gdk::Color->new (0xCCCC,0,0);
my $greyh = Gtk2::Gdk::Color->new (0xCCCC,0xCCCC,0xCCCC);
my $greyl = Gtk2::Gdk::Color->new (0x9999,0x9999,0x9999);
my $redh = Gtk2::Gdk::Color->new (0xFFFF,0,0);
my $redl = Gtk2::Gdk::Color->new (0xAAAA,0,0);
my $greenh = Gtk2::Gdk::Color->new (0,0xFFFF,0xEEEE);
my $greenl = Gtk2::Gdk::Color->new (0,0xFFFF,0xCCCC);
my $greend = Gtk2::Gdk::Color->new (0,0xFFFF,0);
my $blueh = Gtk2::Gdk::Color->new (0,0xFFFF,0xFFFF);
my $bluel = Gtk2::Gdk::Color->new (0,0xCCCC,0xFFFF);



1;