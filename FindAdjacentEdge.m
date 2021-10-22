function AE = FindAdjacentEdge(edgeid,OL_G)
%this function is used to find adjacent edges of edgeid
% edgeid = 907;
AE = [];
p1 = str2num(OL_G.Edges(edgeid,:).EndNodes{1});
p2 = str2num(OL_G.Edges(edgeid,:).EndNodes{2});
np1 = neighbors(OL_G,p1);
for i = 1:length(np1)
    if np1(i)~=p2
        index = findedge(OL_G,p1,np1(i));
        AE = [AE,index];
    end
end
np2 = neighbors(OL_G,p2);
for i = 1:length(np2)
    if np2(i)~=p1
        index = findedge(OL_G,p2,np2(i));
        AE = [AE,index];
    end
end

end

