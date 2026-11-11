.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and al, dil
inc bl
sub al, -1
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add bl, -95
cmp dx, 55
or rax, -1571963467
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
