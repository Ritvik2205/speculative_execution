.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, -82
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and al, -54
neg ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
cmovnbe rdx, rsi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
not di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
sbb sil, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
