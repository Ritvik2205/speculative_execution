.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
cmovns edx, esi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
cmovnbe edx, edi
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and cx, 14
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 62
bts rax, rax
cmovnz edi, ecx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 66
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
