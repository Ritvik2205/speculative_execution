.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
cmovbe rsi, rdi
setnb al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
setnb cl
cmovno edi, edx
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
cmp sil, 69
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
lea rdi, qword ptr [rdx]
sbb eax, 32
btc dx, 69
test eax, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
