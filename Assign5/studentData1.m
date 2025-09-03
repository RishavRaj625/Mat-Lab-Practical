studentData = {
    'Aamir',  7,  45;
    'Mukesh', 18, 150;
    'Anita',  64, 75;
    'Raghav', 47, 200;
    'Roshni', 36, 0
};
disp(studentData);
% 
% nameContainer = studentData(1, 1);
% disp(nameContainer);
% 
% ageContainer = studentData(1, 2);
% disp(ageContainer);
% 
% aamirAge = studentData{1,2};
% disp(aamirAge);
% 
% newStudents = {'Neha', 25, 90;
%                'Vikram', 55, 120};
% 
% studentData = [studentData; newStudents];
% disp(newStudents);

% names = studentData(:, 1);

ages = cell2mat(studentData(:,2));
[~,idx] = sort(ages);
studentData = studentData(idx, :);
disp(studentData);

names = studentData(:,1);
disp(names);
