.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 55
adc sil, -63
add cl, al
sub al, 96
and cl, 32
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and cl, bl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and sil, bl
or al, al
cmp al, sil
and dl, 126
sub bl, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
