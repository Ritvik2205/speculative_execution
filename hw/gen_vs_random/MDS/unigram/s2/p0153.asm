.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdx, rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
or sil, -8
bts bx, si
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
cmovnle edx, ebx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
or bl, cl
cmovle rbx, rdx
xor sil, 37
and cl, -63
not edx
bt di, 35
cmovno eax, esi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
test al, 74
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
