package main

// Build a standalone executable with 'go build go-calc'
// Or just do a one time run test with 'go run go-calc 1 / 4'

import "fmt"
import "os" // For ARGV
import "strconv"

func main() {
	var arg_count int = len(os.Args) - 1;

	if (arg_count != 3) {
		fmt.Fprintf(os.Stdout,"Usage: %s [num1] [+-/*] [num2]\n", os.Args[0]);
		os.Exit(3);
	}

	var num1, _ = strconv.ParseFloat(os.Args[1],32);
	var num2, _ = strconv.ParseFloat(os.Args[3],32);
	var operand = os.Args[2];

	var total float64 = 0;

	if (operand == "+") {
		total = num1 + num2;
	} else if (operand == "-") {
		total = num1 - num2;
	} else if (operand == "/") {
		total = num1 / num2;
	} else if (operand == "*") {
		total = num1 * num2;
	} else {
		fmt.Fprintf(os.Stdout, "Unknown operand '%s'\n", operand);
		os.Exit(2);
	}

	fmt.Fprintf(os.Stdout, "%.2f %s %.2f = %.2f\n", num1, operand, num2, total);
}
