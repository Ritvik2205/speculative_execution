.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
dec rsi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 42
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
xor ax, -2537
dec rdi
bt eax, 127
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setnz bl
lea cx, qword ptr [rsi]
setno bl
xchg ax, dx
add sil, 99 # instrumentation
sets sil
add dl, sil
test dil, -107
and dl, 64
cmovo edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
