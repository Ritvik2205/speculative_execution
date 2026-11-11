.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add al, 18
and bl, dl
lea rcx, qword ptr [rsi + rdi + 8]
sub al, cl
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
