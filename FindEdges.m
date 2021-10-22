function R = FindEdges(AS,OL_G)
%AS is Anonymous Set
%this function wil return the neighbor edges of edges in AS

R = [];

len = length(AS);

for i = 1:len
    aes = FindAdjacentEdge(AS(i),OL_G);
    for j = 1:length(aes)
        if ismember(aes(j),AS)==0 && ismember(aes(j),R)==0
            R = [R aes(j)];
        end
    end
end
    

end

