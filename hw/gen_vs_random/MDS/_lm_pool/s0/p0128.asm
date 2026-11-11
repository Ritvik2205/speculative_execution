.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
xor cl, sil
or bl, 43
or al, -61
xor cl, 98
btr bx, cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xor cl, bl
test bl, dl
xor sil, 27
test eax, 1287331633
and dil, 125
test rax, 1978892575
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
