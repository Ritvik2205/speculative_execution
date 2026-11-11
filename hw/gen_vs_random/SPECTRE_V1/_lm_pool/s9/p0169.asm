.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
test bl, -8
sub al, 63
and rax, -175411684
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 58
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cwd
lea ax, qword ptr [rsi + rcx + 22]
and si, 96
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
xchg bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
