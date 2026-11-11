.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -84
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
sbb bl, cl
inc al
test eax, 1600638830
cmp dl, bl
and rax, 37
adc dil, dl
cmp sil, 127
sub cl, -73
sbb al, -14
and rax, 1072797615
adc dl, 81
mov dl, cl
adc dil, dl
inc edx
and al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
