% Read and validate first number
num1 = input('Enter the first number: ', 's');
num1 = str2double(num1);
if isnan(num1)
    disp('Invalid input. Please enter a numeric value.');
    return;
end

% Read and validate second number
num2 = input('Enter the second number: ', 's');
num2 = str2double(num2);
if isnan(num2)
    disp('Invalid input. Please enter a numeric value.');
    return;
end

% Basic operations
sumResult = num1 + num2;
disp(['Sum: ', num2str(sumResult)])

sub = num1 - num2;
disp(['Subtraction: ', num2str(sub)])

mul = num1 * num2;
disp(['Multiplication: ', num2str(mul)])

if num2 ~= 0
    div = num1 / num2;
    disp(['Division: ', num2str(div)])
    
    modular = mod(num1, num2);
    disp(['Modular: ', num2str(modular)])
else
    disp('Division: Division by zero error')
    disp('Modular: Division by zero error')
end

% Operation using switch case
op = input('Enter the operation (+, -, *, /): ', 's');

switch op
    case '+'
        result = num1 + num2;
        disp(['Result: ', num2str(result)])
    case '-'
        result = num1 - num2;
        disp(['Result: ', num2str(result)])
    case '*'
        result = num1 * num2;
        disp(['Result: ', num2str(result)])
    case '/'
        if num2 ~= 0
            result = num1 / num2;
            disp(['Result: ', num2str(result)])
        else
            disp('Invalid operation: Division by zero error')
        end
    otherwise
        disp('Invalid operation')
end
