#creating function which separtes the positive and negative numbers in two different arrays
sub separate {
    my (@numbers) = @_; #function is receiving an array of all numbers
    my @arrayPositive = (); #empty array for positive numbers
    my @arrayNegative = ();#empty array for negative numbers
    foreach $number (@numbers)  #iteration of the array with foreach loop
    {
         if ($number > 0 ) #if the current number of the array is positive => pushing it to our array of positive numbers
        {
            push(@arrayPositive, $number);
            next; #next iteration and skipping the code below
        }
        if ($number == 0 ) #as 0 is neither negative nor positive, it shouldn't be added in the arrays
        {
            next;
        }
        push(@arrayNegative, $number); #if the current number is not positive, this line of code will be reached and its value will be pushed to the array of negative numbers
    }
    #when all numbers of the array are iterated, the next step is to sort the two arrays
    @arrayPositive = sort { $a <=> $b } @arrayPositive; #sort positive numbers array in ascending order
    @arrayNegative = sort { $b <=> $a } @arrayNegative; #sort positive numbers array in descending order
    return (\@arrayPositive,\@arrayNegative); #the function will be returning the reference of the arrays for positive and negative numbers
}

@array = (-10, 20, 34, 5, -5, -30, -1, 0); #declaration of array with static values
my ($arrayPositive, $arrayNegative) = &separate(@array); #assigning values of the two arrays to be the result of the function, using "my" in the beggining for creating new arrays, otherwise it will return a reference
print "Positive numbers sorted in ascending order: @$arrayPositive\n"; #printing the positive numbers in the array
print "Negative numbers sorted in descending order: @$arrayNegative\n";
#printing the negative numbers in the array
