.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
adc ebx, 2
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc eax, -655457029
mov cl, bl
add al, -109
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and bl, al
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
