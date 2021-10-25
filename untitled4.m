as_nodeid = [];
for i = 1:length(as)
    p1 = str2num(OL_G.Edges(as(i),:).EndNodes{1});
    p2 = str2num(OL_G.Edges(as(i),:).EndNodes{2});
    if ismember(p1,as_nodeid) == 0
        as_nodeid = [as_nodeid,p1];
    end
    if ismember(p2,as_nodeid) == 0
        as_nodeid = [as_nodeid,p2];
    end
end

sg = subgraph(OL_G,as_nodeid);

for id = sg.Edges.EdgeId'
    if ismember(id,as) == 0
        sg = rmedge(sg,find(sg.Edges.EdgeId == id));
    end
end

for eid = sg.Edges.EdgeId'
    sg = rmedge(sg,find(sg.Edges.EdgeId==eid));
    p1 = str2num(OL_G.Edges(eid,:).EndNodes{1});
    p2 = str2num(OL_G.Edges(eid,:).EndNodes{2});
    x1 = OL_G.Nodes(p1,:).nodeX;
    y1 = OL_G.Nodes(p1,:).nodeY; 
    x2 = OL_G.Nodes(p2,:).nodeX;
    y2 = OL_G.Nodes(p2,:).nodeY;
    p1id = find(sg.Nodes.NodeId == p1);
    p2id = find(sg.Nodes.NodeId == p2);
    
    pid = find(PointerTable.EdgeId == eid);
    pid = SortDisXY(x1,y1,pid,PointerTable);
    newid = [p1id];
    
    for i = pid'
        c = {num2str(length(sg.Nodes.Name)+1) length(sg.Nodes.Name)+1 PointerTable(i,:).PointX PointerTable(i,:).PointY};
        NodeProps = cell2table(c,...
             'VariableNames', {'Name' 'NodeId' 'nodeX' 'nodeY'});
        sg = addnode(sg,NodeProps);
        newid = [newid length(sg.Nodes.Name)];
    end
    newid = [newid p2id];
    
    for i = 1:length(newid)-1
        
        c = {[sg.Nodes(newid(i),:).Name sg.Nodes(newid(i+1),:).Name] distance([sg.Nodes(newid(i),:).nodeX sg.Nodes(newid(i),:).nodeY],[sg.Nodes(newid(i+1),:).nodeX sg.Nodes(newid(i+1),:).nodeY])...
            0,0,0,0};
        EdgeTable = cell2table(c,...
             'VariableNames',{'EndNodes' 'Weight' 'EdgeId' 'LengthPercent' 'NumPointer' 'NumPerson'});
        sg = addedge(sg,EdgeTable);
    end
   
end



x = sg.Nodes.nodeX;
y = sg.Nodes.nodeY;
p = plot(sg,'XData',x,'YData',y);
hold on