.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
cmovnz ax, cx
or cl, dil
and eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
cmovnz rdi, rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
test sil, 17
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
cmovnz rcx, rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
