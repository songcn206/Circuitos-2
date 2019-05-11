function ccomp4(spice_directory, loop_directory, rf_directory, ...
    dynamic_directory, images_directory)


bode_simulation_color_list = [1 0.4 0.1; 0.4 1 0.1; 0.4 0.1 1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DYNAMIC RESPONSE.

component_values = {'1n', '10n', '100n'};

for idx = (1 : length(component_values))
    
%     dynamic_plot_mode_3(component_values{idx}, spice_directory, ...
%         dynamic_directory, images_directory);
    
    dynamic_plot_mode_4(component_values{idx}, spice_directory, ...
        dynamic_directory, images_directory);
    
end

% Execute crop script.
olddir = cd(fullfile(images_directory, ...
    dynamic_directory));

[status,~] = system('crop.cmd');

if status
    warning('%s.\n', 'Cannot execute system command.');
end

cd(olddir);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LOOP CURRENT MODE.

% simulation_name = 'power_supply_CCOMP4_LOOP_Modo3';
% 
simulation_directory = 'Ccomp4_corriente';
% 
parametric_labels = {'1nF', '10nF', '100nF'};
% 
% simulation_title = strjoin({'Ganancia de lazo ', ...
%     '$ \left( a \cdot f \right)', ...
%     '_{ \left( j \cdot \omega \right)} $', ...
%     ' parametrizada por Ccomp4 en modo corriente, 2A'}, '');
% 
% simulation_prealocation_count = 65000;
% 
% simulation_mod_limits = [-150 100];
% 
% simulation_mod_ticks = (-150:25:100);
% 
% simulation_ang_limits = [-500 50];
% 
% simulation_ang_ticks = sort([(-500 :50: 50) -180]);
% 
% graphic_handle = loop_gain(...
%     fullfile(spice_directory, simulation_directory, ...
%     strjoin({simulation_name, '.txt'}, '')), ...
%     simulation_title, ...
%     100, bode_simulation_color_list, ...
%     simulation_prealocation_count, 3, ...
%     simulation_mod_limits, simulation_mod_ticks, ...
%     simulation_ang_limits, simulation_ang_ticks, ...
%     parametric_labels);
% 
% image_file_name = fullfile(images_directory, ...
%     loop_directory, ...
%     strjoin({simulation_name, '.png'}, ''));
% 
% % Salvo el gr�fico en un archivo.
% saveas(graphic_handle, image_file_name);
% 
% % Cierro el gr�fico luego de salvado.
% close(graphic_handle);

%%%%-----------------------------------------------

simulation_name = 'power_supply_CCOMP4_LOOP_Modo4';

simulation_title = ...
    strjoin({'Ganancia de lazo $ \left( a \cdot f \right)', ...
    '_{ \left( j \cdot \omega \right)} $', ...
    ' parametrizada por Ccomp4 en modo corriente, 200mA'}, '');

simulation_prealocation_count = 65000;

simulation_mod_limits = [-150 100];

simulation_mod_ticks = (-150:25:100);

simulation_ang_limits = [-500 50];

simulation_ang_ticks = sort([(-500 :50: 50) -180]);

graphic_handle = loop_gain(...
    fullfile(spice_directory, simulation_directory, ...
    strjoin({simulation_name, '.txt'}, '')), ...
    simulation_title, ...
    100, bode_simulation_color_list, ...
    simulation_prealocation_count, 3, ...
    simulation_mod_limits, simulation_mod_ticks, ...
    simulation_ang_limits, simulation_ang_ticks, ...
    parametric_labels);

image_file_name = fullfile(images_directory, ...
    loop_directory, ...
    strjoin({simulation_name, '.png'}, ''));

% Salvo el gr�fico en un archivo.
saveas(graphic_handle, image_file_name);

% Cierro el gr�fico luego de salvado.
close(graphic_handle);

% Execute crop script.
olddir = cd(fullfile(images_directory, ...
    loop_directory));

[status,~] = system('crop.cmd');

if status
    warning('%s.\n', 'Cannot execute system command.');
end

cd(olddir);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RF CURRENT MODE.

% simulation_name = 'power_supply_CCOMP4_RF_Modo3';
% 
simulation_directory = 'Ccomp4_corriente';
% 
% parametric_labels = {'1nF', '10nF', '100nF'};
% 
% simulation_title = strjoin({'Respuesta en frecuencia $',...
%     ' \left( \frac{I_{L}}{V_{Ref}} \right)', ...
%     '_{ \left( j \cdot \omega \right)} $', ...
%     ' parametrizada por Ccomp4 en modo corriente, 2A', ''});
% 
% simulation_prealocation_count = 65000;
% 
% simulation_mod_limits = [-65 30];
% 
% simulation_mod_ticks = (-65:10:30);
% 
% simulation_ang_limits = [-240 60];
% 
% simulation_ang_ticks = (-240 :30: 60);
% 
% graphic_handle = rf(...
%     fullfile(spice_directory, simulation_directory, ...
%     strjoin({simulation_name, '.txt'}, '')), ...
%     simulation_title, ...
%     100, bode_simulation_color_list, ...
%     simulation_prealocation_count, 3, ...
%     simulation_mod_limits, simulation_mod_ticks, ...
%     simulation_ang_limits, simulation_ang_ticks, ...
%     parametric_labels);
% 
% image_file_name = fullfile(images_directory, ...
%     rf_directory, ...
%     strjoin({simulation_name, '.png'}, ''));
% 
% % Salvo el gr�fico en un archivo.
% saveas(graphic_handle, image_file_name);
% 
% % Cierro el gr�fico luego de salvado.
% close(graphic_handle);

%%%%-----------------------------------------------

simulation_name = 'power_supply_CCOMP4_RF_Modo4';

simulation_title = strjoin({'Respuesta en frecuencia $', ...
    ' \left( \frac{I_{L}}{V_{Ref}} \right)', ...
    '_{ \left( j \cdot \omega \right)} $', ...
    ' parametrizada por Ccomp4 en modo corriente, 200mA'}, '');

simulation_prealocation_count = 65000;

simulation_mod_limits = [-70 60];

simulation_mod_ticks = (-70:10:60);

simulation_ang_limits = [-190 110];

simulation_ang_ticks = sort([(-190 :30: 110) 0]);

graphic_handle = rf(...
    fullfile(spice_directory, simulation_directory, ...
    strjoin({simulation_name, '.txt'}, '')), ...
    simulation_title, ...
    100, bode_simulation_color_list, ...
    simulation_prealocation_count, 3, ...
    simulation_mod_limits, simulation_mod_ticks, ...
    simulation_ang_limits, simulation_ang_ticks, ...
    parametric_labels);

image_file_name = fullfile(images_directory, ...
    rf_directory, ...
    strjoin({simulation_name, '.png'}, ''));

% Salvo el gr�fico en un archivo.
saveas(graphic_handle, image_file_name);

% Cierro el gr�fico luego de salvado.
close(graphic_handle);

% Execute crop script.
olddir = cd(fullfile(images_directory, ...
    rf_directory));

[status,~] = system('crop.cmd');

if status
    warning('%s.\n', 'Cannot execute system command.');
end

cd(olddir);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end



function dynamic_plot_mode_3(component_value, spice_directory, ...
    dynamic_directory, images_directory)

time_simulation_color_list = [1 0.4 0.1; 0.4 0.1 1];

simulation_name = sprintf('power_supply_CCOMP4_%s_STEP_Modo3', ...
    strrep(component_value,'.','_'));

simulation_save_name = simulation_name;

simulation_directory = 'Ccomp4_corriente';

simulation_title = strjoin({...
    'Respuesta din\''{a}mica a un salto de carga ', ...
    ' para Ccomp4 = ', ...
    component_value, ..., ...
    ' en modo corriente, 2A'}, '');

simulation_voltage_limits = [0 11];

simulation_voltage_ticks = (0 :0.5:11);

simulation_current_limits = [0 70];

simulation_current_ticks = (0 :5:70);

graphic_handle = dynamic_response(...
    fullfile(spice_directory, simulation_directory, ...
    strjoin({simulation_name, '.txt'}, '')), ...
    simulation_title, 100, time_simulation_color_list, ...
    simulation_voltage_limits, simulation_voltage_ticks, ...
    simulation_current_limits, simulation_current_ticks);

image_file_name = fullfile(images_directory, ...
    dynamic_directory, ...
    strjoin({simulation_save_name, '.png'}, ''));

% Salvo el gr�fico en un archivo.
saveas(graphic_handle, image_file_name);

% Cierro el gr�fico luego de salvado.
close(graphic_handle);

end


function dynamic_plot_mode_4(component_value, spice_directory, ...
    dynamic_directory, images_directory)

time_simulation_color_list = [1 0.4 0.1; 0.4 0.1 1];

simulation_name = sprintf('power_supply_CCOMP4_%s_STEP_Modo4', ...
    strrep(component_value,'.','_'));

simulation_save_name = simulation_name;

simulation_directory = 'Ccomp4_corriente';

simulation_title = strjoin(...
    {'Respuesta din\''{a}mica a un salto de carga ', ...
    ' para Ccomp4 = ', ...
    component_value, ..., ...
    ' en modo corriente, 200mA'}, '');

simulation_voltage_limits = [0 11];

simulation_voltage_ticks = (0 :0.5:11);

simulation_current_limits = [0 70];

simulation_current_ticks = (0 :5:70);

graphic_handle = dynamic_response(...
    fullfile(spice_directory, simulation_directory, ...
    strjoin({simulation_name, '.txt'}, '')), ...
    simulation_title, 100, time_simulation_color_list, ...
    simulation_voltage_limits, simulation_voltage_ticks, ...
    simulation_current_limits, simulation_current_ticks);

image_file_name = fullfile(images_directory, ...
    dynamic_directory, ...
    strjoin({simulation_save_name, '.png'}, ''));

% Salvo el gr�fico en un archivo.
saveas(graphic_handle, image_file_name);

% Cierro el gr�fico luego de salvado.
close(graphic_handle);

end




