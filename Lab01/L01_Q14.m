%Omar Garcia
%L01_Q14

clear all

nMinutesPerQuestion = 8
nQuestions = 16
nTotalMinutes = nMinutesPerQuestion * nQuestions
nMinutesLeftOver = mod(nTotalMinutes,60)
nIntegerHours = floor((nTotalMinutes - nMinutesLeftOver) / 60)

