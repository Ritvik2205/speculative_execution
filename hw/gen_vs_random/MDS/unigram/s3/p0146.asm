.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl edx, edi
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 39
and dx, 35
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
or cl, 100
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 12
or sil, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 58
test ecx, 1044879383
cmovp esi, esi
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
cmovnb ax, di
cmovnl ecx, eax
cmovo bx, di
cmovz rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
