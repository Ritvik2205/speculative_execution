.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
xor dil, -124
xor al, sil
test rax, -2004802425
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
test rcx, -613256812
test sil, 17
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor al, sil
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test dl, al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
