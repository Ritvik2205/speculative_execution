.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
bt eax, 78
lea rsi, qword ptr [rax + rbx + 5]
or esi, -74
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sub bl, -6
or rcx, 97
lea si, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
