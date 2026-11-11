.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
sub al, 26
cmp cl, al
or al, -16
xor dl, -66
dec cl
dec dl
adc dl, dil
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test bl, al
xor sil, 78
test si, 94
and al, -12
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
