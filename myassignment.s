# --- DO NOT EDIT THE VARIABLE NAMES: The autograder will use these variable names to insert testcase...

.data

element1: .word 1

element2: .word 2

element3: .word 3

element4: .word 4

element5: .word 5

num_elements: .word 5

#...to here---

sum_text: .string "Sum: "
newline: .string "\n"

.text

main:
#loading temp variables to elements
la t0, element1

la t1, element2

la t2, element3

la t3, element4

la t4, element5

#put values in
lw t0, 0(t0)
lw t1, 0(t1)
lw t2, 0(t2)
lw t3, 0(t3)
lw t4, 0(t4)

#add values up in s0
add s0, t0, t1
add s0, s0, t2
add s0, s0, t3
add s0, s0, t4

#print text and final sum
la a0, sum_text
print_string

mv a0, s0
print_int

la a0, newline
print_string


#checking which numbers are above 0

li s2, 1
li s1, 0
blt t0, s2, jump2

add s1,s1,s2
mv a0, s1
print_int
ecall
jump2: 

 

 ecall
done:

 li a7, 10

 ecall
