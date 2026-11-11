.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and bl, -28 # instrumentation
cmovl rsi, rdi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
jmp .bb_0.1
.bb_0.1:
and dl, 21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor cl, 83
cmovnp rdx, rsi
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
btc ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and al, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
test rdx, rcx
and bl, 127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
