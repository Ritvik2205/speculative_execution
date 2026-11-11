.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdx, rdi
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmp si, -11
and dl, dil
and dl, -92
sub dl, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
adc bl, cl
mov dil, al
or cx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
