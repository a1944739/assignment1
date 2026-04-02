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
countpost_text: .string "Count positive: "
max_text: .string "Max: "
min_text: .string "Min"
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

#loads counter variable and 1 to integer register
li s2, 1
li s1, 0
#if element 1 is less than 1, skip adding 1 to the counter
blt t0, s2, jump2

add s1,s1,s2

ecall
jump2: 

blt t1, s2, jump3
add s1,s1,s2

ecall
jump3: 

blt t2, s2, jump4
add s1,s1,s2

ecall
jump4: 

blt t3, s2, jump5
add s1,s1,s2

ecall
jump5: 

blt t4, s2, jump6
add s1,s1,s2

ecall
jump6:

#prints final addition
la a0, sum_text
print_string

mv a0,s1
print_int

la a0, newline
print_string

#set max value to first element
mv s3,t0
#if the first element is less than the current element skip to jump 7
blt t1,s3, jump7
#otherwise change the current max to element 2
mv s3, t1 

jump7:
blt t2,s3,jump8
mv s3, t2

jump8:
blt t3,s3,jump9
mv s3, t3

jump9:
blt t4,s3,jump10
mv s3, t4

jump10:
#prints max value
la a0, max_text
print_string

mv a0,s3
print_int

la a0, newline
print_string



ecall
done:

 li a7, 10

 ecall
