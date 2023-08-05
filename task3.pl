#creating function which separtes the positive and negative numbers in two different hashes
sub separate_hashes {
    my (@numbers) = @_; #function is receiving an array of all numbers
    my %hashPositive = (); #empty hash for positive numbers
    my %hashNegative = ();#empty hash for negative numbers
    while (my ($index, $number) = each @numbers) #iteration of the array with while loop
    {
        if ($number > 0 ) #if the current number of the array is positive
        {
            $hashPositive{$number} = $index; #adding to the positive hash a key/value pair (key will be the current number of the array and the value will be its index )
            next; #next iteration and skipping the code below
        }
        if ($number == 0 ) #as 0 is neither negative nor positive, it shouldn't be added in the hashes
        {
            next;
        }
        $hashNegative{$number} = $index; #if the current number is not positive, this line of code will be reached and its value will be added as a key in the negative hash with value its index
    }
    return (\%hashPositive,\%hashNegative); #the function will be returning the reference of the hashes for positive and negative numbers and their indexes.
}

@array = (-10, 20, 34, 5, -5, -30, -1, 0); #declaration of array with static values
my ($hashPositive, $hashNegative) = &separate_hashes(@array); #assigning values of the two hashes to be the result of the function
#in order to print all the values in each hash we should iterate them so for every key/value pair we have a print
print "Positive values (value -> index): ";
while ( ($key_number,$value_index) = each %$hashPositive ) {
    print "$key_number => $value_index ; ";
}
print "\nNegative values (value -> index): ";
while ( ($key_number,$value_index) = each %$hashNegative ) {
    print "$key_number => $value_index ; ";
}
