.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
bt ebx, 28
test edx, edi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
xor sil, al
bt rdx, rdx
or dil, -76
cmovnbe ecx, ecx
test rdi, 94
and al, -114
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
test dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovnbe rax, rsi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
