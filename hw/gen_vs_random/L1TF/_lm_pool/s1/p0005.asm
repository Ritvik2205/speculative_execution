.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
sub al, 26
sub rcx, -121
add bx, 33
cwde
cmp al, dil
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
