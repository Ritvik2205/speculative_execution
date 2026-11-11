.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
or sil, dil
test cl, cl
xor dil, 81
test edi, -1252846009
or dx, 125
xor dil, -124
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor si, 80
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and sil, -56
and cl, sil
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
or bl, -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
