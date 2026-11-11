.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 15
lea rcx, qword ptr [rdi + rbx]
cmovs rdi, rdi
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
test cl, -120
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 42
mov sil, cl
sub al, dil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
