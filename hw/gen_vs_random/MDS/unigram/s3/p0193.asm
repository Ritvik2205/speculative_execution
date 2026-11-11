.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
or al, -48
cmovnb eax, eax
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 28
and bl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 80
and al, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
test si, 23
or bl, dil
cmovns ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
cmovnb rcx, rcx
and dl, -107 # instrumentation
cmovz rax, rcx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 8
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 97
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
