classdef Battery
    
    properties
        
    end

    methods
        function obj = Battery(inputArg1,inputArg2)
            
            obj.Property1 = inputArg1 + inputArg2;
        end

        function outputArg = method1(obj,inputArg)
            
            outputArg = obj.Property1 + inputArg;
        end
    end
end

name = "Qair",
max_power = 2e6;                       % Power                          [W]
stock =  4.857316332726169e6;          % Battery capacity            [W*hr]
state_of_charge = 0.45;                % [1]
efficiency_charge = 0.915;             % [1]
efficiency_discharge = 0.915;          % [1]
min_soc_limit = 0.05;
max_soc_limit = 0.95;
soc_limit_margin = 0.00;
hysteresis_thresholds = [0.2, 0.8];
soc_wanted = 0.45;
soc_management_power = 0.5e6;
soc_dead_band = 0.05;

%Vnom =  ;         % Nominal voltage                      [V]
%Ri   = ;       % Internal resistance                  [Ohm]
%AH   = stock/Vnom;      % Ampere-hour rating                   [hr*A]
%V1   = 0.9*Vnom;    % Voltage V1 < Vnom when charge is AH1 [V]
%AH1  = AH/2;        % Charge AH1 when no-load volts are V1 [hr*A]
%AH0  = 0.7*AH;      % Initial charge                       [hr*A]
%Ts    = 0.01;       % Fundamental sample time   [s]
%Vcdc0 = 0.95*Vnom;  % Initial Capacitor voltage