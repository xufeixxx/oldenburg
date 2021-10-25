% node_id = [1 2 3 4]';
% node_x = [1 2 2 1]';
% node_y = [1 1 2 2]';
% names = sprintfc('%g',node_id);
% NodeTable = table(names,node_id,node_x,node_y,'VariableNames',{'Name' 'NodeId' 'nodeX' 'nodeY'});
% 
% 
% s = [1 2 3 1];
% t = [2 3 4 4];
% weights = [1 1 1 1]';
% EdgeTable = table([s' t'],weights,...
%     'VariableNames',{'EndNodes' 'Weight'});
% 
% G = graph(EdgeTable,NodeTable);
% 
% G = rmedge(G,1);
% c = {num2str(length(G.Nodes.Name)+1) length(G.Nodes.Name)+1 1.5 1};
% NodeProps = cell2table(c,...
%     'VariableNames', {'Name' 'NodeId' 'nodeX' 'nodeY'});
% G = addnode(G,NodeProps);
% 
% 
% EdgeTable = table([1 5; 2 5],[0.5 0.5]','VariableNames',{'EndNodes','Weight'});
% G = addedge(G,EdgeTable);
% x = G.Nodes.nodeX;
% y = G.Nodes.nodeY;
% p = plot(G,'XData',x,'YData',y);






