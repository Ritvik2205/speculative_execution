.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and di, 60
cmovnz rax, rdi
bts edi, esi
and dl, sil
cmovnbe bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
xor dl, -68
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
xor si, 56
cmovnbe edx, ebx
and al, -64 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
cmovnb cx, dx
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
or bl, 84
bts rbx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
