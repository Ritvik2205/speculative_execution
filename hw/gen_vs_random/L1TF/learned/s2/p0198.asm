.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
sbb sil, -19
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 51
inc dil
xor dil, cl
imul dx, cx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
