.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 51
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
add cx, 82
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
xor dl, 19
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
