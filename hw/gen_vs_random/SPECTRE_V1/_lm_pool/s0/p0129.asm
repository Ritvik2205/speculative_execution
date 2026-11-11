.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmp rax, -72548874
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, -65
and sil, 111
or al, 100
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
jnle .bb_0.5
jmp .bb_0.6
.bb_0.5:
add cl, al
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
js .bb_0.6
jmp .exit_0
.bb_0.6:
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
