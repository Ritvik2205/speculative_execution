.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 106
adc dil, cl
test al, 72
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
sbb al, -3
adc dil, al
sub al, dl
neg dil
xor dl, -66
jmp .bb_0.1
.bb_0.1:
cmp bl, dl
sub sil, bl
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
and al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
