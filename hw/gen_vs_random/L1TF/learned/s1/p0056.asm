.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
add al, 74
setb sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and bl, 32 # instrumentation
cmovnbe ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
jmp .bb_0.3
.bb_0.3:
cmovnp rax, rdi
lea rcx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
