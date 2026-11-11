.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 42
sbb dl, 127
xor ebx, 71
sub cl, -47
sbb edi, 25
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
lea bx, qword ptr [rcx + rsi + 49]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
