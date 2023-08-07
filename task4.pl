#creating function which finds the longest and shortest strings in a list
sub find_longest_shortest {
    my ($text_reference, $hashLongestShortest_reference) = @_;
    #function is receiving a list of strings and empty hash
     $string_max_length = 0; #variable for storing the current max length (it will be used for the checks)
     $string_min_length = ~0; #variable for storing the current min length (it will be used for the checks); ~0 is the largest int value
     $string_longest = ''; #variable to store the longest string
     $string_shortest =''; #variable to store the shortest string 
    
    
    foreach $word (@$text_reference)  #iteration of the list with foreach loop
    {
        if (length($word) > $string_max_length) #checking if the length of the current word of the itteration is the longest at this moment compared to the variable in which the logest length is stored
        {
            
           $string_max_length = length($word); #storing the max length to be the length of the current word
           $string_longest = $word; #assigning a new value to the variable in which the longest word is stored to be the current one
        }
       if (length($word) < $string_min_length ) #checking if the length of the current word of the itteration is the shortest at this moment compared to the variable in which the shortest length is stored
        {
           $string_min_length = length($word); #storing the min length to be the length of the current word
           $string_shortest = $word; #assigning a new value to the variable in which the shortest word is stored to be the current one
        }
    }
    #adding the longest found string as a value to the hash and it's key "longest_string"
    $hashLongestShortest_reference->{longest_string} = $string_longest; 
    #adding the shortest found string as a value to the hash and it's key "shortest_string"
    $hashLongestShortest_reference->{shortest_string} = $string_shortest;
}

my @text = ("jasminaa", "ivanova", "test"); #declaration of list with static values
my %hashLongestShortest = ();#declaration of an empty hash
&find_longest_shortest(\@text, \%hashLongestShortest); #calling the function and passing the list and the hash to it
print "Longest string: $hashLongestShortest{longest_string}\n"; #printing the longest string of the hash finding it by its key
print "Shortest string: $hashLongestShortest{shortest_string}\n";#printing the shortest string of the hash finding it by its key