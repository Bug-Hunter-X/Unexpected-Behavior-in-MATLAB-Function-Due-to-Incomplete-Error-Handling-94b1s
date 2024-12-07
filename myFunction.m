function result = myFunction(input)
  % Some code here...
  if input < 0
    result = -1;  % Handle negative input
    return
  end
  % More code here...
end

% Example usage
input = -5;
result = myFunction(input);
disp(result); % Output: -1

input = 10;
result = myFunction(input);
disp(result); % Output: Some unexpected value or error