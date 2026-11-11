.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
jmp .bb_0.1
.bb_0.1:
btc cx, ax
and si, -121
test edi, -1252846009
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and al, 106
cmovbe cx, dx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.3
.bb_0.3:
and bl, 68
xor sil, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
test rdi, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
