.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp eax, edi
and ax, 13090
btr bx, ax
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or rax, 302048971
cmovnz esi, esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and dl, 60 # instrumentation
cmovnl eax, edx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
cmovle si, ax
cmovz edi, edx
xor dx, 82
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test eax, -675944960
bt rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
