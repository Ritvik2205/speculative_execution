.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
cmp edx, 44
sub al, bl
or ecx, 50
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 29
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
or sil, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
