.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
cmp al, dil
add dil, -75
or sil, al
cmovno ax, dx
adc dil, 18
add bl, dil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
sub sil, dl
adc al, -92
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
