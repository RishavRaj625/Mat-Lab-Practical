feet = input('Enter your height (in feet): ');
inches = input('Enter your height (in inches): ');

% Validate inputs
if ~isscalar(feet) || feet < 0 || floor(feet) ~= feet
    error('Feet must be a non-negative integer.');
end
if ~isscalar(inches) || inches < 0 || inches >= 12 || floor(inches) ~= inches
    error('Inches must be an integer between 0 and 11.');
end

% Ask user for weight in pounds
weight_lb = input('Enter your weight (in pounds): ');

if ~isscalar(weight_lb) || weight_lb <= 0
    error('Weight must be a positive number.');
end

% Convert height to total inches
total_inches = feet * 12 + inches;

% Convert to SI units using helper function
[height_cm, mass_kg] = convertUnits(total_inches, weight_lb);

% Display results
fprintf('Your height in centimeters: %.2f cm\n', height_cm);
fprintf('Your weight in kilograms: %.2f kg\n', mass_kg);

% Conversion function
function [height_cm, mass_kg] = convertUnits(height_in, weight_lb)
    inch_to_cm = 2.54;
    lb_to_kg = 0.453592;
    height_cm = height_in * inch_to_cm;
    mass_kg = weight_lb * lb_to_kg;
end
