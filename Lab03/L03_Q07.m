%Omar Garcia
%L03_Q07

%Get an alphabet input and determine whether or not the input is in the
%first half of the alphabet and determine if it is a vowel then print the
%results

%Variables
%chLetter: Inputed letter (char)
%bIsFistHalf: Is the letter in the first half (boolean)
%bIsVowel: Is the letter a vowel

%Clear all
clear all

chLetter = input("Enter a letter: ",'s');

bIsFirstHalf = (chLetter >= 65 && chLetter < 79 ) || (chLetter >= 97 && chLetter < 110);

bIsVowel = chLetter == 65 || chLetter == 69 || chLetter == 73 || chLetter == 79 || chLetter == 85 || chLetter == 97 || chLetter == 101 || (chLetter == 105) || chLetter == 111 || chLetter == 117;

fprintf("%c is in the first half of the alphabet ? %d \n", chLetter,bIsFirstHalf);
fprintf("%c is a vowel? %d \n",chLetter,bIsVowel);
