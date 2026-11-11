.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
cmp rsi, 51
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 11
xor dl, 19
cmp al, -119
or bx, 90
lea dx, qword ptr [rbx + rax + 97]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 84
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
