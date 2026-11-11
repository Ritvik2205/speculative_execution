.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
test al, 52
add cl, dl
cmp al, -106
xor si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
xor ax, 13332
cmovz esi, edx
jmp .bb_0.1
.bb_0.1:
sub rbx, 101
and bl, -60
sub al, dil
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
