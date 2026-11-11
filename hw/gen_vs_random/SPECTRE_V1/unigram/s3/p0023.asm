.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
xor rcx, 87
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
sub rbx, -128
or dil, -55
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
mov si, cx
lea cx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
