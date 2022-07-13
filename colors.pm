#!/usr/bin/perl


## declaration of gtk2 window child for application 
## different colors usw..

## 16-bit RGB values, saturation 0 - 65535
# color = Gtk2::Gdk::Color->new ($red, $green, $blue, $pixel=0)

package colors;

use strict;
use warnings;

use Gtk2;


use Exporter qw(import); 

our @EXPORT_OK = qw($colors);

## declare colors

our $colors = {
    "green" => Gtk2::Gdk::Color->new(0xCCCC,0,0),
    "blue" => Gtk2::Gdk::Color->new(0,0,0xAAAA),
    "bluel" => Gtk2::Gdk::Color->new(0xAAAA,0,0),
    "red" => Gtk2::Gdk::Color->new(0xAAAA, 0xCCCC, 0xCCCC),
	"redl" => Gtk2::Gdk::Color->new(0xCCCC,0xCCCC,0xCCCC),
    
};


1;