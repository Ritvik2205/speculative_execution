.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
sub dl, -12
sub dl, al
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
test sil, -31
sub cl, -21
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
mov bl, al
adc dl, 48
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, 71
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
setz dil
sub dx, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
