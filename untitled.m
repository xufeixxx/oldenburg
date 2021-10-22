% scatter(olnodes(:,2),olnodes(:,3));
% node_id = olnodes(:,1);
% node_x = olnodes(:,2);
% node_y = olnodes(:,3);
% 
% olnode_table = table(node_id,node_x,node_y);
% 
% 
% edge_id = oledges(:,1);
% 
% en = oledges(:,2:3);
% 
% edge_weight = oledges(:,4);
% 
% oledge_table = table(en,edge_id,edge_weight,'VariableNames',{'EndNodes','edge_id','edge_weight'});


% ol_graph = graph(oledge_table,olnode_table);

% s = oledges(:,2);
% t = oledges(:,3);
% weights = oledges(:,4);
% edge_id = oledges(:,1);
% EdgeTable = table([s t],weights,edge_id, ...
%     'VariableNames',{'EndNodes' 'Weight' 'EdgeId'});
% 
% node_id = olnodes(:,1);
% node_x = olnodes(:,2);
% node_y = olnodes(:,3);
% name = sprintfc('%g',node_id);
% NodeTable = table(name,node_id,node_x,node_y,'VariableNames',{'Name' 'NodeId' 'nodeX' 'nodeY'});
% 
% OL_G = graph(EdgeTable,NodeTable);


% x = OL_G.Nodes.nodeX;
% y = OL_G.Nodes.nodeY;
% plot(OL_G,'XData',x,'YData',y);

% x = [1:7035];
% y = x';
% 
% OL_G.Edges.EdgeId = y;
