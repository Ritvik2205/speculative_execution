.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 20
adc bl, 86
add dil, -71 # instrumentation
adc edi, edi
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 66
setle al
cmp cl, -89
sub dl, dl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
lea rdx, qword ptr [rcx]
cwde
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
test rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
