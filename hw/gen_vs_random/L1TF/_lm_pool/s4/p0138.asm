.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
xchg esi, edx
btc di, bx
sub dl, 41
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
test dil, -126
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
