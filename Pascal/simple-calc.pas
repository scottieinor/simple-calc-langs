program SimpleCalc;

	var
		first_num, second_num, total	: Double;
		action							: char;

	function compute(num1 : Double; oper : char; num2 : Double) : Double;

	begin
		
	end;

	(* Function to write out the help instructions *)
	function showhelp(): Boolean;

	begin
		writeln('Usage: simple-calc <number 1> <operator> <number 2>');
		writeln('numbers: Just about any number');
		writeln('operator: One of the math operators (+ - * /).');
		writeln('operator: One of the math operators (+ - * /).');
		writeln('--h, --help: Show this message.');
		showhelp := true;

	end;

	begin

	(* If the -h, --help, or help flags exist print out help *)
	if (ParamStr(1) = '--help') or (ParamStr(1) = '--h') or (ParamStr(1) = 'help') then
	begin
		showhelp;
		halt;
	end;

	if (ParamStr(1) = '--prompt') or (ParamStr(1) = '--p') then
		write('Enter the first number: ');
		readln(first_num);
		write('Enter math operator: ');
		readln(action);

		if NOT (action = '+') or NOT (action = '-') or NOT (action = '*') or NOT (action = '/') then

		begin
			write('Enter math operator: ');
			readln(action);
		end;

		write('Enter second number: ');
		readln(second_num);
end.
