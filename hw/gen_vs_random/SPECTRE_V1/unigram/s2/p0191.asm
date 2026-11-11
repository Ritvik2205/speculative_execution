.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
sbb ecx, 80
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
add bl, 70
sbb edx, 105
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
add sil, 40 # instrumentation
btc rsi, rsi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
lea rax, qword ptr [rdx + rdi + 83]
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
add al, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], ax
lea ax, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
