function [pointX,pointY] = randomPointInLine(x1,y1,x2,y2)
maxx = max(x1,x2);
minx = min(x1,x2);
maxy = max(y1,y2);
miny = min(y1,y2);

if x1==x2
    pointX = x1;
    rn = miny+(maxy-miny)*rand();
    pointY = rn;
else
    k = (y1-y2)/(x1-x2);
    b = y1;
%     y = k(x-x1)+b;
    pointX = minx+(maxx-minx)*rand();
    pointY = k*(pointX-x1)+b;
end
        
end

