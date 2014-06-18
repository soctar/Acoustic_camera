pCoords = [1 1 200; 300 300 200];
xres = 5;
yres = 5;
micSep = 8; %in inches
arrayWidth = 6; %num mics
arrayHeight = 5; 
numMics = arrayWidth*arrayHeight;
xp = 30;%x coord of top-left array corner
yp = 30;%y coord of top-left array corner
zp = 0;%z coordinate of the array
mCoords = zeros(numMics,3);
for mic=1:numMics
    mCoords(mic,2) = yp+(floor(mic/arrayWidth)-1)*micSep;%m1 at botL-facing
    mCoords(mic,1) = xp+(mod(mic,arrayWidth+1))*micSep;