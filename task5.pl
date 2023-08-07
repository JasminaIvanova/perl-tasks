#creating function which coverts binary number to decimal
sub convert {
    my ($num_binary) = @_; #the function will receive the binary number as argument
    my $num_decimal = 0; #variable to store the final decimal number
    my $bit_current = 0; #variable to store the current bit of the binary num
    my $position = 0; #variable to store the current position of the bit

    for (my $index = length($num_binary) - 1; $index >= 0; $index--) #iteration of the number in reversed order because the conversion starts from the last index
    {
        $bit_current = substr($num_binary, $index, 1); #taking the current bit with sustring method
        $num_decimal += $bit_current * (2 ** $position); #adding to the variable in which we will store the final decimal number, the current bit multiplied by 2 on power of the position
        $position++; #increasing the position with one
    }

    return $num_decimal; #the function will return the final decimal number
}

my $number_binary = "1010"; #declaration of string, holding the binary number
my $number_decimal = convert($number_binary); #declaration of variable to hold the decimal number as result returned from the function 
print "Binary number: $number_binary\n"; #printing the binary number 
print "Decimal number: $number_decimal\n"; #printing the decimal number