%Omar Garcia
%L01_Q13

clear all

nDiametercm = 15
nHeightcm = 45
nNumOfContainers = 20

fTotalVolumeForCylinders = pi * (nDiametercm/2)^2 * nHeightcm * 20
fTotalVolumeForRect = nDiametercm * nDiametercm * nHeightcm * 20
FTotalVolumeFoam = fTotalVolumeForRect - fTotalVolumeForCylinders

