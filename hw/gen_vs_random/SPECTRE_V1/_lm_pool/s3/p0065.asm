.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and al, -23
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
sub al, -1
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, sil
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
add cl, -127
lea rcx, qword ptr [rdi + rbx + 10]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
