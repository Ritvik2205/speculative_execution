.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp ecx, 73
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
cmp cl, dl
cmp cl, 32
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmovnle rax, rbx
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
lea ax, qword ptr [rdx]
or di, 0b1000000000000000 # instrumentation
bsf dx, di
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
