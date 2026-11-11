.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, -104
cmovnl di, bx
btr edx, 197
test dil, dil
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmovs esi, ecx
cmovnz ebx, eax
or ecx, ecx
btc di, 164
test bx, 25542
xor al, dl
cmovz dx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and al, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
cmovnp rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
