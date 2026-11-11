.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
cmovno cx, ax
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -1
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp eax, -240917296
xor cl, sil
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
sub al, sil
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
test ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
