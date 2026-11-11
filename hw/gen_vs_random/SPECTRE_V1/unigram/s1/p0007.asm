.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -29
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
test dil, -107
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 33
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
bts rcx, 9
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 26 # instrumentation
sbb cl, bl
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
lea ax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
lea bx, qword ptr [rdi + rdi + 46]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
add cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
