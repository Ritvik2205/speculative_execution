.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and si, -121
or bl, sil
bt rdi, rbx
and rdx, rsi
and dl, 21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
cmovz bx, bx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rsi, 2
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 53
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
xor cl, al
btr eax, esi
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
xor bl, -27
and al, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
