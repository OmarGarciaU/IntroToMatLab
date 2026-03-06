%Omar Garcia
%L01_Q15

clear all

nFourDigitNum = 9471
nThousands = floor(nFourDigitNum / 1000)
nHundreds = floor((nFourDigitNum / 100) - (nThousands * 10))
nTens = floor((nFourDigitNum / 10) - ((nThousands * 100) + (nHundreds * 10)))
nOnes = floor((nFourDigitNum) - ((nThousands * 1000) + (nHundreds * 100) + (nTens * 10)))