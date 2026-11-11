.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
lea cx, qword ptr [rbx]
mov bl, dil
or ebx, -124
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -89
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
or esi, -74
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
