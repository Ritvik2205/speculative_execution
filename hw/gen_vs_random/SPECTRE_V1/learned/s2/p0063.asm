.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 324518812
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
cmovb eax, eax
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
setnp bl
setnl dl
mov rdx, 32
setnl dl
btc rsi, 9
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
add dil, 27
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
mov cl, cl
cmovs dx, si
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -6
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
