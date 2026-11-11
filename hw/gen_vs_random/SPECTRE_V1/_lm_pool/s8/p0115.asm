.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
sbb bl, dl
mov al, sil
add dil, -75
adc bx, 64
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 95
add al, -47
add bl, dil
adc al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
