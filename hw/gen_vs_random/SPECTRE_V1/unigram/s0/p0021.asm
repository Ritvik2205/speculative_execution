.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
add dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
add bl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
sbb al, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
add rax, -845342150
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 75
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
movzx edi, dil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
btc ebx, 139
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
imul rsi, rdi, 90
adc edx, 58
lea ax, qword ptr [rdx + rdx + 3]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
