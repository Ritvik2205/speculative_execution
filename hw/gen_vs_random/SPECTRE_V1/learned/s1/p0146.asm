.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
sub rdx, rcx
sbb eax, -108
mov ax, 49
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
dec al
mov bl, sil
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
