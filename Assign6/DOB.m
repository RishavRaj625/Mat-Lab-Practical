N = input('Enter the number of dates of birth to input: ');

dobCell = cell(N, 3);

for i = 1:N
    dobCell{i,1} = input(sprintf('Enter day (dd) for date %d: ', i));
    dobCell{i,2} = input(sprintf('Enter month (mm) for date %d: ', i));
    dobCell{i,3} = input(sprintf('Enter year (yyyy) for date %d: ', i));
    
    if dobCell{i,1} < 1 || dobCell{i,1} > 31 || dobCell{i,2} < 1 || dobCell{i,2} > 12
        error('Day must be 1-31 and month must be 1-12.');
    end
end

% Convert years column to numeric array for sorting
years = cell2mat(dobCell(:,3));

% Sort by year (ascending)
[~, idx] = sort(years);

% Reorder dobCell according to sorting by year
dobCellSorted = dobCell(idx, :);

fprintf('\nSorted dates of birth:\n');
for i = 1:N
    fprintf('%02d-%02d-%04d\n', dobCellSorted{i,1}, dobCellSorted{i,2}, dobCellSorted{i,3});
end
