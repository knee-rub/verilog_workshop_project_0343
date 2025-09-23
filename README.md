# verilog_workshop_project---
For the concluding project of the Verilog Workshop Series, you will be creating a GCD calculator using all the Verilog concepts learnt so far.

The algorithim used to compute the GCD is as follows. Two numbers x, y are compared. If x > y, then x = x - y. If y > x, then y = y - x. If x = y, the GCD is found. The process is repeated till the GCD is found. 
For example:
x = 10
y = 2

Is x = y? No, x > y therefore x = x - y
in our case, x = 10 - 2 = 8.

Is x = y? No, x > y therefore x = x - y
In our case, x = 8 - 2 = 6.

Is x = y? No, x > y there fore x = x - y
In our case, x = 6 - 2 = 4.

Is x = y? No, x > y therefore x = x - y
In our case, x = 4 - 2 = 2.

Is x = y? Yes, therefore the GCD of 10 and 2 is 2.

Note that 0 is not a valid input.


# Verilog Implementation:

Inputs: clock, reset, x (4 bit), y (4 bit)

Outputs: valid, gcd (4 bit)

The clock and reset are required to control the FSM. The valid bit output indicates whether the output has been computed and is a valid result.

* Hint 1: The FSM will include the following states-

    state 0: initial state

    state 1: x < y

    state 2: y > x

    state 3: x = y


* Hint 2: Internal registers are required to store and update the x and y values.


* Hint 3: Update the state at the posedge of clock. To ensure that x and y values are updated only after state updation, update the x and y values at the negedge of clock.

# Testbench

The testbench has been provided, but you are encouraged to try writing it yourself and try out other input values for simulation.
