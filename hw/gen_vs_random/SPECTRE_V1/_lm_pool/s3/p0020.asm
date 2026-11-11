.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
inc rdx
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
xchg rax, rcx
lea ax, qword ptr [rcx]
btc ax, bx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
bts ax, 11
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
lea edi, qword ptr [rax]
lea edi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
