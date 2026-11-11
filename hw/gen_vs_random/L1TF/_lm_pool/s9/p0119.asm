.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, di
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 94
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 79
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
test esi, 3
jmp .bb_0.1
.bb_0.1:
test rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
