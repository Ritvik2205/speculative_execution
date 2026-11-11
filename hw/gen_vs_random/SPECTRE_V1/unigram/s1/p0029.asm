.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -111
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
cmp rsi, 53
setnb sil
adc sil, -77
lea esi, qword ptr [rsi + rsi + 91]
setl cl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
movzx ecx, dx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
lea rbx, qword ptr [rax + rdx + 50]
add bl, -95
btc edx, edx
bts dx, 207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
