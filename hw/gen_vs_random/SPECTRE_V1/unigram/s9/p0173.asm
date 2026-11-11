.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
xor edx, 45
not di
adc dx, -112
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 11
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
lea rax, qword ptr [rax + rbx]
bt rdi, rdi
neg edi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
add bl, -118 # instrumentation
cmovp ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
