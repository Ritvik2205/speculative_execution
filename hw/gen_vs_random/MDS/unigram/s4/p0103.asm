.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], eax
xor al, 122
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and cl, -40 # instrumentation
cmovp ecx, ecx
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
and al, 42 # instrumentation
cmovz eax, edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rax
and rax, -636362975
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 3
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
cmovz eax, esi
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
xor eax, -885380838
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
cmovl bx, cx
bt rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
