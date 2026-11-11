.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 8
test bl, 106
not si
test cl, sil
and cl, 8
or eax, -1642752131
cmovl rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
or bl, 73
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
and al, 73
jmp .bb_0.1
.bb_0.1:
and dl, -107 # instrumentation
cmovz rax, rdi
cmovo ebx, esi
btc bx, 179
or bl, 84
test rax, 1732677821
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
