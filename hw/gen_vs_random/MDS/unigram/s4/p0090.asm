.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
or bx, 91
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 72
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
xor bl, -61
and dil, -62
btc rcx, 76
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and al, 17 # instrumentation
cmovnp edx, esi
cmovnbe rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
and bl, -75 # instrumentation
cmovp ebx, ebx
or eax, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 37
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
btr ax, bx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
