.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 68
add bl, cl
and bl, 124
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
sub cl, dl
adc eax, 34
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 97
cmp al, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
