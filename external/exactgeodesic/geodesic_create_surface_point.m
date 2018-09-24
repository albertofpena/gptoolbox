function p = geodesic_create_surface_point(type,id,x,y,z)

p.type = type;
p.id = id; 

if nargin == 3 
    xt = x(:,1);
    y = x(:,2);
    z = x(:,3);
    x = xt;clear xt; 
end
p = struct('type',type(1,:),'id',id(1),'x',x(1,1),'y',y(1,1),'z',z(1,1));

Npoints = length(id);
p = p(ones(Npoints,1));
if ~iscell(id)
    id = num2cell(id(:));
end
if ~iscell(x)
    x = num2cell(x(:));
end
if ~iscell(y)
    y = num2cell(y(:));
end
if ~iscell(z)
    z = num2cell(z(:));
end
[p.id] = id{:};
[p.x] = x{:};
[p.y] = y{:};
[p.z] = z{:};

% % % p.type = type;
% % % p.id = id;
% % % 
% % % if nargin == 3 
% % %     p.x = x(1);
% % %     p.y = x(2);
% % %     p.z = x(3);
% % % else
% % %     p.x = x;
% % %     p.y = y;
% % %     p.z = z;
% % % end
