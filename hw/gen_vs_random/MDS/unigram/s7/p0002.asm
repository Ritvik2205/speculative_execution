.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 125
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
or rcx, -17
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
or sil, -49
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
xor ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and al, 42 # instrumentation
cmovz ebx, esi
jmp .bb_0.1
.bb_0.1:
test rdx, 51
cmovns rbx, rdx
and cx, -8
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
test esi, 1857129931
test bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
bts dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
