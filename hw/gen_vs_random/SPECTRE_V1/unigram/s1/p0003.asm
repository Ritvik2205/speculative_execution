.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdi], si
bswap rsi
xor esi, 90
lea edx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
lea ebx, qword ptr [rax + rsi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rsi]
cmp dil, dil
test ecx, 729805876
test si, 24
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
setnp dil
dec rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
