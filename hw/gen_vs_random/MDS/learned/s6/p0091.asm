.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
or cl, 30
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and dl, bl
xor bl, 67
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or dil, cl
xor ax, -16696
bts edi, 248
xor di, 93
or rsi, 26
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
