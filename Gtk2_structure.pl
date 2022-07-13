 #!/usr/bin/env perl

## load packages
use strict;
use warnings;

use utf8;

use Gtk2;

use DBI;


## user defined packages
use lib '.';
use colors qw($colors);


Gtk2->init;


## variables
my $blue = %$colors{"bluel"};
my $red = %$colors{"red"};
my $win_data_con = Gtk2::Window->new('toplevel');
my $hbox   = Gtk2::HBox->new;
my $vbox = Gtk2::VBox->new;
my $label  = Gtk2::Label->new("Zur Datenbank verbinden und die Ausgab vorbereiten?");
my $button_connect = Gtk2::Button->new("Ja, Bitte verbinde mich..");
my $button_not_connect = Gtk2::Button->new("Nein, ich möchte keine Verbindung herstellen..");


# create child-object of buttons
($button_connect->get_children)[0]->modify_fg("normal", $blue);
($button_not_connect->get_children)[0]->modify_fg("normal", $blue);


# database
my $dbh = "";
my ($db_user, $db_name, $db_pass) = ('postgres', 'data', 'iwilldie');


## designing input window
$win_data_con->set("border_width" => 30 );
$win_data_con->set_position('center_always');
$win_data_con->add($vbox);
#$win_data_con->modify_bg("normal", $color);
$label->modify_fg("normal", $red); 
## not working in debian 10 and gtk2
#$button_connect->modify_fg("normal" => Gtk2::Gdk::Color->new(0xAAAA, 0, 0));
#$button_not_connect->modify_fg("normal" => Gtk2::Gdk::Color->new(0xAAAA, 0, 0));



$vbox->add($label);
$vbox->add($hbox);
$hbox->add($button_connect);
$hbox->add($button_not_connect);


## action if button was clicked
$button_connect->signal_connect(clicked => sub {
        $label->set_text("Verbindung wird erstellt, MyHuman..");
        
        $dbh = DBI->connect("dbi:Pg::dbname=data", 'data', 'iwilldie', {AutoCommit => 0});

        # error handling connection
        if (!$dbh){
            die "failed to connect to PostgreSql database DBI->errstr()";
        } else {
            print("Connected to PostgreSql server successfully.\n");
        }

    }
);

$button_not_connect->signal_connect(clicked => sub {
        $label->set_text("Bitte schlafen legen..");
        $button_not_connect->signal_connect(clicked => \&close);
	}
);


$win_data_con->signal_connect(destroy => \&close);


## ask for connecting data

$win_data_con->show_all;

Gtk2->main;





## choose input for fr3



## choose kind of fr3



## output data into fr3



## subroutine
## close input-window
sub close
{
	Gtk2->main_quit();
	exit (0)
}

