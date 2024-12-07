function result = myFunction(input)
  % Check for valid input type
  if ~isnumeric(input)
    error('Input must be a numeric value.');
  end

  try
    % Perform calculations
    if input < 0
      result = -1;
      return
    elseif input == 0
      result = 0;
      return
    else
      % Add more robust error handling here for other potential cases (e.g., division by zero)
      result = 1 / input; % Example calculation that could cause an error
    end
  catch exception
    % Handle exceptions (e.g., division by zero)
    result = NaN;
    fprintf('Error: %s\n', exception.message);
  end
end

% Example usage
input = -5;
result = myFunction(input);
disp(result); % Output: -1

input = 10;
result = myFunction(input);
disp(result); % Output: 0.1

input = 0;
result = myFunction(input);
disp(result); % Output: 0

input = 'abc';
result = myFunction(input); % Output: Error