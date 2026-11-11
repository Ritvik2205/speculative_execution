.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
add sil, 2
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or ecx, 44
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and ax, 32540
js .bb_0.3
jmp .exit_0
.bb_0.3:
and dl, -92
xchg al, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
