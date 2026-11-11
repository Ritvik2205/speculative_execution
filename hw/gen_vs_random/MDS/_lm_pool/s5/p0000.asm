.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
or sil, bl
xor dil, -70
test ebx, -961564216
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and sil, -56
and cx, -8
or rdx, -109
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
