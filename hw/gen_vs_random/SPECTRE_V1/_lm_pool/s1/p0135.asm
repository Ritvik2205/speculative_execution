.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
mov sil, 10
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
xor rax, -1905683998
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmp eax, 100
cmp rsi, 53
add dil, cl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 50
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
