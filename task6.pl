#creating function which converts the current time to desired pattern

sub time_convertor {
   ($sec,$min,$hour,$day,$mon,$year) = localtime(); #retriving of information for the current time
   #adding leading zero
   $sec = sprintf("%02d", $sec); 
   $min = sprintf("%02d", $min);
   $hour = sprintf("%02d", $hour);
   $day = sprintf("%02d", $day);
   $mon = sprintf("%02d", $mon);
   #returning the result with the current time
    return "$day-$mon-$year $hour:$min:$sec"; #the function will return the final decimal number
}

my $time = time_convertor(); #declaration of variable to hold the converted time as result returned from the function 
print "Formatted current time: $time\n"; #print converted time
