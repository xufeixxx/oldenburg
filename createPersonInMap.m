totalPerson = 10000;


numperson = zeros(7035,1);
for i = 1:totalPerson
    k = randsrc(1,1,[1:7035;OL_G.Edges.LengthPercent']);
    numperson(k,1) = numperson(k,1)+1;
end
OL_G.Edges.NumPerson = numperson;
