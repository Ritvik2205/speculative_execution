.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
bts rsi, rbx
bts rbx, 56
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
test rax, 1207043993
and rax, 4
xor edx, 94
xor cx, -18
or sil, -49
and dl, dl
and bl, sil
jmp .bb_0.1
.bb_0.1:
or sil, -49
or sil, -49
bt cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
