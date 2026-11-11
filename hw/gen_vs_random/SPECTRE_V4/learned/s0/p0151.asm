.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -74
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
adc al, sil
xor ax, -29507
adc al, sil
or al, dil
or rdx, 1
adc cl, al
adc dl, 38
xor ax, 45
cmp al, cl
cmp dl, cl
adc dl, sil
add dil, dl
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
