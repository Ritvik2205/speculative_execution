.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -65
cmp eax, 100
lea bx, qword ptr [rax]
xchg rdi, rbx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, -6
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg al, sil
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 62
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 58
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
