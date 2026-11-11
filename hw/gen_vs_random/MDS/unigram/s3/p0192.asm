.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp eax, ecx
test ebx, -961564216
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
and sil, -14 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
cmovnb ebx, esi
test edx, -1561252782
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
btc bx, di
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
xor sil, -126
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
test cl, -113
cmovnz dx, ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
or sil, al
and eax, 561041355
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
