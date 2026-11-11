.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 72
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
xor dil, -42
lea cx, qword ptr [rsi + rdx + 87]
add dil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
