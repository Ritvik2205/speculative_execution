.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
adc bl, 102
cmp dil, bl
setnb al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
sub sil, cl
and al, cl
add ax, 8031
bts di, 144
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
