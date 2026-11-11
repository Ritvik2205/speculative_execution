.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
btr dx, ax
lea rsi, qword ptr [rdx + rbx + 14]
sub cx, 71
and dil, sil
cmp cl, 57
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
add al, 56
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
