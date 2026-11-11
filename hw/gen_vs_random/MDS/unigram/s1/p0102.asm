.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
btr ax, 193
and eax, eax
cmovbe edi, eax
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
test rax, rdx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 84
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
cmovnbe dx, ax
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and al, -33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and al, -67 # instrumentation
cmovnle rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
bt rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
