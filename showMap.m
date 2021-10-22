x = OL_G.Nodes.nodeX;
y = OL_G.Nodes.nodeY;
% plot(OL_G,'XData',x,'YData',y,'EdgeLabel',OL_G.Edges.Weight);
% p = plot(OL_G,'XData',x,'YData',y,'EdgeLabel',OL_G.Edges.EdgeId);
p = plot(OL_G,'XData',x,'YData',y);
hold on

% POI has 4 types,include hospital,bar,market,school
% 1 for hospitial green
% 2 for bar magenta
% 3 for market cyan
% 4 for school yellow
% k = scatter(PointerTable.PointX,PointerTable.PointY,'filled');



h=1;
hospital_pointx = zeros(10000,1);
hospital_pointy = zeros(10000,1);
b=1;
bar_pointx = zeros(10000,1);
bar_pointy = zeros(10000,1);
m=1;
market_pointx = zeros(10000,1);
market_pointy = zeros(10000,1);
s=1;
school_pointx = zeros(10000,1);
school_pointy = zeros(10000,1);

for i = 1:10000
    if PointerTable(i,:).Type == 1
        hospital_pointx(h,1) = PointerTable(i,:).PointX;
        hospital_pointy(h,1) = PointerTable(i,:).PointY;
        h = h+1;
    elseif  PointerTable(i,:).Type == 2
        bar_pointx(b,1) = PointerTable(i,:).PointX;
        bar_pointy(b,1) = PointerTable(i,:).PointY;
        b = b+1;
    elseif  PointerTable(i,:).Type == 3
        market_pointx(m,1) = PointerTable(i,:).PointX;
        market_pointy(m,1) = PointerTable(i,:).PointY;
        m = m+1;
    else
        school_pointx(s,1) = PointerTable(i,:).PointX;
        school_pointy(s,1) = PointerTable(i,:).PointY;
        s = s+1;
    end
end
scatter(hospital_pointx,hospital_pointy,25,'g','filled');
hold on
scatter(bar_pointx,bar_pointy,25,'m','filled');
hold on
scatter(market_pointx,market_pointy,25,'c','filled');
hold on
scatter(school_pointx,school_pointy,25,'y','filled');
hold on
scatter(3.7596e+03, 3.3385e+03,'r','filled');
hold on 
aslen = length(as);

for i = 1:aslen
    p1 = str2num(OL_G.Edges(as(i),:).EndNodes{1});
    p2 = str2num(OL_G.Edges(as(i),:).EndNodes{2});
    x1 = OL_G.Nodes(p1,:).nodeX;
    y1 = OL_G.Nodes(p1,:).nodeY;
    x2 = OL_G.Nodes(p2,:).nodeX;
    y2 = OL_G.Nodes(p2,:).nodeY;
    plot([x1 x2],[y1 y2],'Color','b');
    hold on
end

        
        
        
        
        
        
        
        
        
        
        
        