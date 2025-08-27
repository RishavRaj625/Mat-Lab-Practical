% Height in feet and inches
feet = 5;
inches = 15;
total_inches = feet * 12 + inches;

% Weight in pounds
weight_lb = 180;

% Call the conversion function (nested local function below)
[height_cm, mass_kg] = convertUnits(total_inches, weight_lb);

% Display results
fprintf('Height: %.2f cm\n', height_cm);
fprintf('Mass: %.2f kg\n', mass_kg);

% Function must be at the end of the file
function [height_cm, mass_kg] = convertUnits(height_in, weight_lb)
    inch_to_cm = 2.54;
    lb_to_kg = 0.453592;
    height_cm = height_in * inch_to_cm;
    mass_kg = weight_lb * lb_to_kg;
end

