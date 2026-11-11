.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
adc cl, -54
and al, al
and sil, al
sbb al, 102
or edi, -78
cmp al, -44
dec dil
cmovbe ebx, ecx
sub al, 63
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
adc dil, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
