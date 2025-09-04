rows = input('Enter the number of rows: ');
cols = input('Enter the number of columns: ');

userCell = cell(rows, cols);

for r = 1:rows
    for c = 1:cols
        prompt = sprintf('Enter scalar value for element (%d, %d): ', r, c);
        val = input(prompt);
        userCell{r, c} = val;
    end
end

fprintf('\nThe cell array you entered is:\n');
printArrayEle(userCell);

function printArrayEle(cellArr)
    [rows, cols] = size(cellArr);
    for r = 1:rows
        for c = 1:cols
            fprintf('%5g', cellArr{r, c});
        end
        fprintf('\n');
    end
end
