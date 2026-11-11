.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
sbb sil, -78
sbb bl, dl
and dl, -109
add bl, -95
sbb al, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
btr cx, si
test cl, al
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
