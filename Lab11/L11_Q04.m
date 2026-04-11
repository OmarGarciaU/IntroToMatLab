function[] = L11_Q04()
%Omar Garcia
    %Caluclate the Monte Carlo Approximation of an integral 
    %of cos(x) from fXMin fXMax

    %Instantiate Variables
    fXMin = -(pi / 2);
    fXMax = (pi / 2);
    fYMin = 0;
    fYMax = 1;

    %Get number of trials
    [nTrials,bIsValid] = get_number_of_trials();
    %Calculate the Monte Carlo Integral
    if bIsValid
        [fIntegral] = approximate_integeral(nTrials, fXMin, fXMax, fYMin, fYMax);
        fprintf("An approximation of the integral is %.3f \n", fIntegral);
    end
end

function[nTrials, bIsValid] = get_number_of_trials()
    bIsValid = 1;
    fTolerance = 1e-8;
    nTrials = input("Enter the number of trials: ");
    if nTrials <= 0
        fprintf("Invalid entry %d \n",nTrials);
        bIsValid = 0;
    elseif (abs(nTrials) - round(nTrials)) >= fTolerance
        fprintf("Invalid entry %d \n", nTrials);
        bIsValid = 0;
    end
end

function[fIntegral] = approximate_integeral(nTrials, fXMin, fXMax, fYMin, fYMax)
%Calculate my the Monte Carlo Integral Approximation 
    
    %Instantiate Variables
    fSquareArea = (fXMax - fXMin) * (fYMax - fYMin);
    nHit = 0;
    nMiss = 0;
    aHitX = zeros(1,nTrials);
    aHitY = zeros(1,nTrials);
    aMissX = zeros(1,nTrials);
    aMissY = zeros(1,nTrials);

    for i = 1:nTrials
        fXCoor = rand(1,1) * (fXMax - fXMin) + fXMin;
        fYCoor = rand() * (fYMax - fYMin) + fYMin;
        if fYCoor < cos(fXCoor)
            nHit = nHit + 1;
            aHitX(1, nHit) = fXCoor;
            aHitY(1, nHit) = fYCoor;
        else
            nMiss = nMiss + 1;
            aMissX(1, nMiss) = fXCoor;
            aMissY(1, nMiss) = fYCoor;
        end
    end
    
    aHitX = aHitX(1, 1:nHit);
    aHitY = aHitY(1, 1:nHit);
    aMissX = aMissX(1, 1:nMiss);
    aMissY = aMissY(1, 1:nMiss);

    %plot_trials(aHitX, aHitY, aMissX, aMissY, fXMin, fXMax);

    fIntegral = (nHit / nTrials) * (fSquareArea);

end

function[] = plot_trials(aHitX, aHitY, aMissX, aMissY, fXMin, fXMax)
    aXValues = [fXMin:0.01:fXMax];
    aYValues = cos(aXValues);

    figure(1);
    clf();
    hold on;
    plot(aXValues,aYValues, "-k");
    plot(aHitX,aHitY, "og");
    plot(aMissX,aMissY, "ob");
    theme(gcf, "light");
    print('-dpng','L11_Q04.png');
end
