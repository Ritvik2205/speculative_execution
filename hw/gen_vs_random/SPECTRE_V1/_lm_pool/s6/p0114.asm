.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
add dl, 47
cmp rbx, 18
sub al, sil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
lea rax, qword ptr [rcx + rbx + 69]
sub al, bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
lea eax, qword ptr [rdi]
cmp al, 23
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
