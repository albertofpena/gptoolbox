function path = geodesic_trace_back(algorithm, destination)

global geodesic_library;

% tmp{1} = destination;

tmp = destination;

d = geodesic_convert_surface_points(tmp);

tmp = libpointer('doublePtrPtr');
[path_length, tmp, path_double] = calllib(geodesic_library, 'trace_back', algorithm.id, d, tmp);

if path_length > 0
    setdatatype(path_double, 'doublePtr', path_length*5);
    path = geodesic_convert_surface_points(path_double.Value);
else
    path = 0;
end