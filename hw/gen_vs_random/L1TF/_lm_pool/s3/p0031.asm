.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
test dil, -126
sub dil, -70
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
cmp dl, sil
btc cx, bx
xchg edi, esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
