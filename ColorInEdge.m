function [] = ColorInEdge(EdgeId,OL_G,color)
%according edgeid paint color
p1 = str2num(OL_G.Edges(EdgeId,:).EndNodes{1});
p2 = str2num(OL_G.Edges(EdgeId,:).EndNodes{2});
x1 = OL_G.Nodes(p1,:).nodeX;
y1 = OL_G.Nodes(p1,:).nodeY;
x2 = OL_G.Nodes(p2,:).nodeX;
y2 = OL_G.Nodes(p2,:).nodeY;
plot([x1 x2],[y1 y2],'Color',color);
hold on

end

