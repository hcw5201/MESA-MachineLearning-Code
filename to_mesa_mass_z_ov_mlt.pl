#!/usr/bin/perl 
#
#to_mesa_mass_z_ov.pl
#======================================
# Define here very bottom of dqs file  for Vega for a SERIAL JOB
#=======================================

#read in dqs file name
$tmp_dqs_file = shift @ARGV;
$tmp_inlist_file = shift @ARGV;
$mass= shift @ARGV;
$Z = shift @ARGV;
$OV = shift @ARGV;
$MLT = shift @ARGV;
#write output file 
($newfile = $tmp_dqs_file) =~ s/run_mesa_template/sprintf("run_mesa_mass=%4.2f_Z=%5.3f_OV=%5.3f_MLT=%5.3f",$mass,$Z,$OV,$MLT)/e;

#verbose

print $tmp_dqs_file," -> ", $newfile,"\n";

#system('cp','-i',$tmpfile,$newfile);
system('cp',$tmp_dqs_file,$newfile);


open(OLD,$tmp_dqs_file);
open(NEW,">$newfile");
while(<OLD>){

s/MASS_Z_OV_MLT/sprintf("Mass=%4.2f_Z=%5.3f_OV=%5.3f_MLT=%5.3f",$mass,$Z,$OV,$MLT)/e;
s/MASS-Z-OV-MLT/sprintf("%4.2f-%5.3f-%5.3f-%5.3f",$mass,$Z,$OV,$MLT)/e;

#s/(inlist_spica.*)_Mass_Z/$1_$mass_$Z/;

print NEW;
};

close(OLD);
close(NEW);

#write output file 
($newfile = $tmp_inlist_file) =~ s/inlist_spica_template/sprintf("inlist_spica_Mass=%4.2f_Z=%5.3f_OV=%5.3f_MLT=%5.3f",$mass,$Z,$OV,$MLT)/e;

#verbose

print $tmp_inlist_file," -> ", $newfile,"\n";

#system('cp','-i',$tmpfile,$newfile);
system('cp',$tmp_inlist_file,$newfile);


open(OLD,$tmp_inlist_file);
open(NEW,">$newfile");
while(<OLD>){

s/MASS/sprintf("%4.2f",$mass)/e;
s/METALLICITY/sprintf("%5.3f",$Z)/e;
s/OVERSHOOT/sprintf("%5.3f",$OV)/e;
s/ALPHAMLT/sprintf("%5.3f",$MLT)/e;

#s/(inlist_spica.*)_Mass_Z/$1_$mass_$Z/;

print NEW;
};

close(OLD);
close(NEW);




print "....done.\n";
