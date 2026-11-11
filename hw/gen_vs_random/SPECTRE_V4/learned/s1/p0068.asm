.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor dl, al
sub sil, cl
test dil, al
add dil, sil
inc ebx
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
bt si, ax
and cx, -117
sbb sil, -124
test si, 55
and dl, 126
or bl, dl
adc bl, 0
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
sub bx, 24
cmp sil, bl
cmp dil, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
