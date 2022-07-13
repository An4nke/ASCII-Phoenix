#!/bin/perl



use warnings;
use strict;



## export Object
package phoenix;

use Exporter qw(import);
our @EXPORT_OK = qw(new);



# create phoenix object
sub new {
    my $class = shift;
    my $self = {
        # color of phoenix
        _color => shift,
        # pose of the bird
        _position => shift,
        # room placement -> (x,y) of coordinate-system
        _x_coordinate => shift,
        _y_coordinate => shift,
        # spit fire?
        _fire => shift,
        _bird => shift,
    };
    
    # blessing these holy bird
    bless $self, $class;
    return $self;
    
    # helper function
    sub getColor {
        my ($self) = @_;    
        return $self->{_color};
    };
    sub getPosition {
        my ($self) = @_;
        return $self->{_position};
    };
    sub getXCoordinate {
        my ($self) = @_;
        return $self->{_x_coordinate};
    };
    sub getYCoordinate {
        my ($self) = @_;
        return $self->{_y_coordinate};
    };
    sub getCoordinate {
        my ($self) = @_;
        return "(".$self->{_x_coordinate}.",".$self->{_y_coordinate}.")";
    };
    sub showbird {
        my ($self) = @_;        
        ## show flying phoenix
        if($self->{_position} eq "flying") {
            print ("    __         __
                /  \\ \`\/\^\\´ /  \\
               / | |\\(*;*)/ | |\\
              /\\/\\/\\\(   )//\\/\\/\\
              \\ | | |/\\ /\\ | | |/
             | V\\/V\\/¬ | |¬\\/V\\/|
             | //\\/ /;^;\\  \\/\\\\ |
              \\/   //|||\\\\    \\/
                  |v \\ /v|
                  || || ||
	              || || ||
                 //  || \\\\\n
                [@] [@] [@]\n");
     ## show head of phoenix
     } elsif ($self->{_position} eq "portrait") {
            print("   |  |\n
              /| /|\n
              \\^ \\^\n
              \\\\\\ \\\\___\n
              \\   	   \\_\n
              \\ \\   (@) \¬___\n
              \\|      /______\\\n
             /    //¬¬------´\n
             /    |\n
            _/     \\¬\n
                 v\\v\\\\\n
                \\  \\ \\\\\n
                \\/ \\/\\/\n");   
        } 
    };
    
}



1;