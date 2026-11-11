.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, 212
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
mov dl, bl
bt esi, 11
add dl, -89 # instrumentation
sbb edx, eax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
sub sil, dil
add rbx, 14
movzx edi, cx
movsx rcx, bx
lea rcx, qword ptr [rsi + rax + 75]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
