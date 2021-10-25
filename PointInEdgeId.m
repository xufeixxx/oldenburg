function EdgeId = PointInEdgeId(x,y,G)

edge_L = length(G.Edges.Weight);

for i = 1:edge_L
    p1 = str2num(G.Edges(i,:).EndNodes{1});
    p2 = str2num(G.Edges(i,:).EndNodes{2});
    
    x1 = G.Nodes(p1,:).nodeX;
    y1 = G.Nodes(p1,:).nodeY;
    
    x2 = G.Nodes(p2,:).nodeX;
    y2 = G.Nodes(p2,:).nodeY;
    
    
    



end

