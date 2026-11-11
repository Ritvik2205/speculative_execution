.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 2
xor rdx, 73
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add dl, dl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
add dl, 47
add sil, -68
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
sub al, sil
sbb dil, -106
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
add sil, 2
mov sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
