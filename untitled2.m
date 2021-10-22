% total_weight = 0;
% length = size(OL_G.Edges.Weight,1);
% 
% for i = 1:length
%     total_weight = total_weight+OL_G.Edges.Weight(i);
% end
% 
% 
% length_percent = zeros(length,1);
% 
% for i = 1:length
%     length_percent(i,1) = (OL_G.Edges.Weight(i)/total_weight);
% end
% 
% 
% OL_G.Edges.LengthPercent = length_percent;

% 
% num = zeros(7035,1);
% for i=1:142
%     k = randsrc(1,1,[1:7035;OL_G.Edges.LengthPercent']);
%     num(k,1) = num(k,1)+1;
% end
% kk = zeros(7035,1);
% OL_G.Edges.NumPointer = num;