.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
mov al, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
setz cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or bl, dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
test cl, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
