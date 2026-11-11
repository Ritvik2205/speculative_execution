.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb sil
lea eax, qword ptr [rdi]
sub ax, di
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 50
or sil, -27
cmp cl, sil
add dil, 27
mov dl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or sil, -27
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
setle dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
