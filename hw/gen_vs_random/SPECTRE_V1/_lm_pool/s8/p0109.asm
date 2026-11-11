.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 65
or eax, -1641258390
sbb eax, 2098460225
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
add esi, 57
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and al, -23
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
