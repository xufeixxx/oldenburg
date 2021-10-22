% POI has 4 types,include hospital,bar,market,school
% 1 for hospitial
% 2 for bar
% 3 for market
% 4 for school

count =1;
for id = 1:7035
    np = OL_G.Edges.NumPointer(id);
    for i = 1:np
        t = randi([1,4]);
        PointerTable.Type(count) = t;
        PointerTable.EdgeId(count) = id;
        ip1 = str2num(OL_G.Edges(id,:).EndNodes{1,1});
        ip2 = str2num(OL_G.Edges(id,:).EndNodes{1,2});
        [x,y] = randomPointInLine(OL_G.Nodes.nodeX(ip1),OL_G.Nodes.nodeY(ip1),OL_G.Nodes.nodeX(ip2),OL_G.Nodes.nodeY(ip2));
        PointerTable.PointX(count) = x;
        PointerTable.PointY(count) = y;
        count = count+1;
    end
end
    

