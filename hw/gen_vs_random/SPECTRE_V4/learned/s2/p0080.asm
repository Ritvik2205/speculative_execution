.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
sub bl, cl
xor rax, -117
cmp al, 109
xor ax, 13329
cmp al, cl
dec al
adc sil, -2
sub cl, 18
test dil, bl
adc dil, dl
or ax, 27604
sub al, 26
adc sil, dl
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
