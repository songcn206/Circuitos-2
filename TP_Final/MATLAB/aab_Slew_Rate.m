function aab_Slew_Rate(spice_directory, points_directory, ...
    images_directory, close_figures)


time_simulation_color_list = [1 0.4 0.1; 0.4 0.1 1];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DYNAMIC RESPONSE.

simulation_name = 'amplifier_V2.1_SR';

simulation_save_name = 'Slew_Rate';

simulation_title = ...
    'Respuesta din\''{a}mica a un escal\''{o}n en gran se\~{n}al';

simulation_time_limits = [1.2E-3 2.4E-3];

simulation_time_ticks = (1.2E-3 : 1E-4 : 2.4E-3);

simulation_vin_limits = [-3/28.67 30/28.67];

simulation_vin_ticks = (-3/28.67:1.5/28.67:30/28.67);

simulation_vout_limits = [-3 30];

simulation_vout_ticks = (-3:1.5:30);

graphic_handle = aab_dynamic_response(...
    fullfile(spice_directory, ...
    strjoin({simulation_name, '.txt'}, '')), ...
    simulation_title, 100, time_simulation_color_list, ...
    simulation_time_limits, simulation_time_ticks, ...
    simulation_vin_limits, simulation_vin_ticks, -3,...
    simulation_vout_limits, simulation_vout_ticks, 0);

image_file_name = fullfile(images_directory, ...
    points_directory, ...
    strjoin({simulation_save_name, '.png'}, ''));

% Salvo el gr�fico en un archivo.
saveas(graphic_handle, image_file_name);

% Cierro el gr�fico luego de salvado.
if (close_figures)
    close(graphic_handle);
end


%%%%% ZOOM.

simulation_save_name = 'Slew_Rate_Zoom';

simulation_title = ...
    'Respuesta din\''{a}mica a un escal\''{o}n en gran se\~{n}al';

simulation_time_limits = [1.49945E-3 1.50435E-3];

simulation_time_ticks = (1.49945E-3:5E-7:1.50435E-3);

simulation_vin_limits = [-3/28.67 30/28.67];

simulation_vin_ticks = (-3/28.67:1.5/28.67:30/28.67);

simulation_vout_limits = [-3 30];

simulation_vout_ticks = (-3:1.5:30);

graphic_handle = aab_dynamic_response(...
    fullfile(spice_directory, ...
    strjoin({simulation_name, '.txt'}, '')), ...
    simulation_title, 100, time_simulation_color_list, ...
    simulation_time_limits, simulation_time_ticks, ...
    simulation_vin_limits, simulation_vin_ticks, -3,...
    simulation_vout_limits, simulation_vout_ticks, 0);

image_file_name = fullfile(images_directory, ...
    points_directory, ...
    strjoin({simulation_save_name, '.png'}, ''));

% Salvo el gr�fico en un archivo.
saveas(graphic_handle, image_file_name);

% Cierro el gr�fico luego de salvado.
if (close_figures)
    close(graphic_handle);
end


% Execute crop script.
olddir = cd(fullfile(images_directory, ...
    points_directory));

[status,~] = system('crop.cmd');

if status
    warning('%s.\n', 'Cannot execute system command.');
end

cd(olddir);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end