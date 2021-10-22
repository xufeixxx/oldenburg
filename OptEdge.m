
function bestedge = OptEdge(AS,OL_G,POP,SEN,PointerTable)

aes = FindEdges(AS,OL_G);
bestedge = 0;
MAX = 0;


popas = 0;
senas = 0;
pointnum = 0;
for as = AS
    ta = PointerTable(PointerTable.EdgeId==as,:).Type;
    for i = 1:length(ta)
        popas = popas + POP(ta(i));
        senas = senas + SEN(ta(i));
    end
    pointnum = pointnum + length(ta);
end
       
for i = 1:length(aes)
    POPEDGE = 0;
    SENEDGE = 0;
    ta = PointerTable(PointerTable.EdgeId==aes(i),:).Type;
    for j = 1:length(ta)
        POPEDGE = POPEDGE + POP(ta(j));
        SENEDGE = SENEDGE + SEN(ta(j));
    end
    POPSEG = (popas + POPEDGE)/(pointnum+length(ta));
    SENSEG = (senas + SENEDGE)/(pointnum+length(ta));
    if POPSEG/SENSEG > MAX
        MAX = POPSEG/SENSEG;
        bestedge = aes(i);
    end
end
    
end

