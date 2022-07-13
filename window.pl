#/usr/bin/perl

use strict;
use warnings;

use Gtk2;

Gtk2->init;

my $window = Gtk2::Window->new;
my $hbox   = Gtk2::HBox->new;
my $vbox = Gtk2::VBox->new;
my $label  = Gtk2::Label->new("Eingabefeld");
my $button = Gtk2::Button->new("OK");
my $button2 = Gtk2::Button->new("Abbrechen");

## assign button to window
$window->add($vbox);

## assign label to window 
$vbox->add($label);

## assign second box to window
$vbox->add($hbox);

## assing buttons to window
$hbox->add($button);
$hbox->add($button2);


my $i;
$button->signal_connect(clicked => sub {
    $label->set_text("You have clicked me.." . ++$i . " times");
});


## bind function to event
$window->signal_connect(destroy => \&close);
$button2->signal_connect(clicked => \&close);

$window->show_all;

Gtk2->main;


## Subroutine
sub close
{
	Gtk2->main_quit();
	exit (0)
}
