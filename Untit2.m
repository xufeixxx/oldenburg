SEN = [0.5 0.3 0.2 0];
POP = [0.3 0 0.4 0.3];
AS = [907 908];
aes = FindEdges(AS,OL_G);
bestedge = 0;
MAX = 0;
aslen = length(AS);


popas = 0;
senas = 0;
for as = AS
    ta = PointerTable(PointerTable.EdgeId==as,:).Type;
    for i = 1:length(ta)
        popas = popas + POP(ta(i));
        senas = senas + SEN(ta(i));
    end
end
    

% for i = 1:length(aes)
%     POPEDGE = 0;
%     SENEDGE = 0;
%     ta = PointerTable(PointerTable.EdgeId==aes(i),:).Type;
%     for j = 1:length(ta)
%         POPEDGE = POPEDGE + POP(ta(j));
%         SENEDGE = SENEDGE + SEN(ta(j));
%     end
%     POPSEG = (popas + POPEDGE)/(aslen+1);
%     SENSEG = (senas + SENEDGE)/(aslen+1);
%     if POPSEG/SENSEG > MAX
%         MAX = POPSEG/SENSEG;
%         bestedge = aes(i);
%     end
% end