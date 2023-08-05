#creating function which calculates the sum of positive and negative numbers
sub sum {
    my @numbers = @_; #function is receiving an array
    $sumPositive  = 0; #variable for keeping the sum of positive numbers
    $sumNegative = 0; #variable for keeping the sum of negative numbers
    for my $i (@numbers) #iteration of the array with for loop
    {
         if ($i > 0 ) #if the current number of the array is positive => adding it to our variable for sum of positive numbers
        {
            $sumPositive = $sumPositive + $i;
            next; #next iteration and skipping the code below
        }
        $sumNegative = $sumNegative + $i; #if the current number is not positive, this line of code will be reached and its value will be added to the sum of negative numbers
    }
    return ($sumPositive, $sumNegative); #the function will be returning the values of the variables for sum of positive and negative numbers
}

@nums = (0, 20, -10, -10); #declaration of array with static values
($sumPositive, $sumNegative)  = &sum(@nums); #assigning values of the two variables to be the result of the function
print "Sum of positive numbers: $sumPositive\n"; #printing the positive sum of numbers in the array
print "Sum of negative numbers: $sumNegative\n";  #printing the negative sum of numbers in the array
