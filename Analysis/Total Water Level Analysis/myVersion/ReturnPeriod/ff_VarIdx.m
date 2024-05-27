
function [Idx] = ff_VarIdx(D,Type,VarName)

switch Type
        
    case 'CS'
        
        fields = fieldnames(D);
        name = strcat(Type,'_',VarName,'_');
        Idx = find(contains(fields,name));


        
    case 'HS'
        
        fields = fieldnames(D);
        name = strcat(Type,'_',VarName,Type,'_');
        Idx = find(contains(fields,name));

end

return
