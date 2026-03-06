%Omar Garcia
%L02_Q03

%Calculate numbers of moles given temp, Volume, pressure and print the
%result

%Vaiables
%fVolume: stores the volume in cubic meters
%fTemperature: stores the temperature in Kelvin
%fPressure: stores the pressure in Pascals 
%fR: stores the gas constant 
%fN: stores number of moles 

%clear all 
clear all

fR = 8.3145;
fPressure = input("Enter the pressure in Pascals: ");
fVolume = input("Enter the volume in cubic meters: ");
fTemperature = input("Enter the temperature in Kelvin: ");

fN = (fPressure * fVolume) / (fR * fTemperature);
fprintf("A gas with pressure %0.2f Pa, volume %0.2f m^3, and temperature %0.2f K has %0.2f moles\n",fPressure,fVolume, fTemperature, fN);
