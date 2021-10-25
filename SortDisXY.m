function pid = SortDisXY(x,y,pid,PointerTable)

plen = length(pid);
map = zeros(plen,2);
for i = 1:plen
    px = PointerTable(pid(i),:).PointX;
    py = PointerTable(pid(i),:).PointY;
    map(i,1) = pid(i);
    map(i,2) = distance([x y],[px py]);
end

dis = sort(map(:,2));
for i = 1:length(dis)
    pid(i) = map(map(:,2) == dis(i),1);
end

end

