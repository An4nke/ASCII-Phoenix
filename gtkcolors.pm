#!/usr/bin/perl


## declaration of gtk2 window child for application 
## different colors usw..

## 16-bit RGB values, saturation 0 - 65535
# color = Gtk2::Gdk::Color->new ($red, $green, $blue, $pixel=0)

use strict;
use warnings;

use Gtk2;


package gtkcolors;

use Exporter qw(import); 
our @EXPORT_OK = qw(%colors);

## declare colors
my %colors = {
	"beige" => Gtk2::Gdk::Color->new (0xFFFF,0xFFFF,0xCCCC),
	"azul"  => Gtk2::Gdk::Color->new (0,0,0xCCCC) ,
	"rojo"  => Gtk2::Gdk::Color->new (0xCCCC,0,0),
	"greyh" => Gtk2::Gdk::Color->new (0xCCCC,0xCCCC,0xCCCC),
	"greyl" => Gtk2::Gdk::Color->new (0x9999,0x9999,0x9999),
	"redh" => Gtk2::Gdk::Color->new (0xFFFF,0,0),
	"redl" => Gtk2::Gdk::Color->new (0xAAAA,0,0),
	"greenh" => Gtk2::Gdk::Color->new (0,0xFFFF,0xEEEE),
	"greenl" => Gtk2::Gdk::Color->new (0,0xFFFF,0xCCCC),
	"greend" => Gtk2::Gdk::Color->new (0,0xFFFF,0),
	"blueh" => Gtk2::Gdk::Color->new (0,0xFFFF,0xFFFF),
	"bluel" => Gtk2::Gdk::Color->new (0,0xCCCC,0xFFFF)
};


1;