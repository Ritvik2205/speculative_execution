.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
xor al, -26
or edi, -88
or sil, bl
xor si, 91
and dil, -39
bt cx, dx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
not dl
or rax, -689609688
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
