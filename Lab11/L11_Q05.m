function[] = L11_Q05()
%Omar Garcia
    [fMean, fStdDev, bIsValid] = get_mean_and_std_dev();
    if bIsValid
        [fXMin, fXMax, bMaxIsValid] = get_min_and_max();
        if bMaxIsValid
            afGaussSamples = generate_gaussian_samples(fMean, fStdDev);
            anBinCount = count_samples(afGaussSamples, fXMin, fXMax);
            %plot_samples(anBinCount, fXMin, fXMax);
        end
    end
end

function[fMean, fStdDev, bIsValid] = get_mean_and_std_dev()
    bIsValid = 1;
    fMean = input("Enter a value for the mean: ");
    fStdDev = input("Enter a value for the standard deviation: ");
    if fStdDev <= 0
        fprintf("Invalid entry %.2f \n", fStdDev);
        bIsValid = 0;
    end
end

function[fXMin, fXMax, bMaxIsValid] = get_min_and_max()
%Get input for x min and x max

    %Instantiate Variables
    bMaxIsValid = 1;
    fXMin = input("Enter the min for the histogram: ");
    fXMax = input("Enter the max for the histogram: ");

    %Check if Max is valid
    if fXMax <= fXMin
        fprintf("Invalid entry %.2f \n", fXMax);
        bMaxIsValid = 0;
    end
end

function[afGaussianSamples] = generate_gaussian_samples(fMean, fStdDev)
    afGaussianSamples = zeros(1, 10000);
    nCount = 0;
    for nIndex = 1:5000
        fRandNumOne = rand();
        fRandNumTwo = rand();
        [fGaussSampleOne, fGaussSampleTwo] = uniform_to_gaussian(fRandNumOne, fRandNumTwo, fMean, fStdDev);
        nCount = nCount + 1;
        afGaussianSamples(1, nCount) = fGaussSampleOne;
        nCount = nCount + 1;
        afGaussianSamples(1, nCount) = fGaussSampleTwo;
    end
end

function[fGaussSampleOne, fGaussSampleTwo] = uniform_to_gaussian(fRandNumOne, fRandNumTwo, fMean, fStdDev)
    fGaussSampleOne = fStdDev * sqrt(-2 * log(fRandNumOne)) * cos(2 * pi * fRandNumTwo) + fMean;
    fGaussSampleTwo = fStdDev * sqrt(-2 * log(fRandNumOne)) * sin(2 * pi * fRandNumTwo) + fMean;
end

function[anBinCount] = count_samples(afGaussianSamples, fXMin, fXMax)
    %Cast to int32 to avoid Octave error with non-integer array size
    anBinCount = zeros(1, (2 * (fXMax - fXMin)));
    for nIndex = 1:10000
        nBin = number_to_bin(afGaussianSamples(1, nIndex), fXMin, fXMax);
        anBinCount(1, nBin) = anBinCount(1, nBin) + 1;
    end

    fprintf("The bin counts are: \n");
    %Fixed upper bound - was (2*fXMax-fXMin), now (2*(fXMax-fXMin))
    for nIndex = 1:(2 * (fXMax - fXMin))
        fprintf("%6d", anBinCount(1, nIndex));
    end
    fprintf("\n");
end

function[nBin] = number_to_bin(fNum, fXMin, fXMax)
    if fNum < fXMin
        nBin = 1;
    elseif fNum >= fXMin && fNum < fXMax
        nBin = floor(2 * (fNum - fXMin)) + 1;
    else
        nBin = 2 * (fXMax - fXMin);
    end
end

function[] = plot_samples(anBinCount, fXMin, fXMax)
    anXValues = fXMin:0.5:(fXMax - 0.5);
    figure(1);
    clf();
    hold on;
    plot(anXValues, anBinCount, "-k");
    xlabel("x");
    ylabel("Count");
    theme(gcf, "light");
    print("-dpng", "L11_Q05.png");
end
