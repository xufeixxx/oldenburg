%One person information
positionEdge = 907;
UN = 30;
SN = 3;
SEN = [0.5 0.3 0.2 0];
% Sensitivity of hospital,bar,market,school
x = 3.7596e+03;
y = 3.3385e+03;
% person in the mid of line
POP = [0.3 0 0.4 0.3];
% popularity of hospital,bar,market,school

as = [];%Anonymous Set

as = [as,positionEdge];
asCount = 1;
NumEdge = asCount;
NumUser = OL_G.Edges(as(1),:).NumPerson;

while NumEdge < SN || NumUser < UN
    bestedge = OptEdge(as,OL_G,POP,SEN,PointerTable);
    as = [as,bestedge];
    asCount = asCount + 1;
    NumEdge = asCount;
    NumUser = 0;
    for i = 1:length(as)
        NumUser = NumUser + OL_G.Edges(as(i),:).NumPerson;
    end
end



    
    
