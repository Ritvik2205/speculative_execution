.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
add si, 81
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 94
imul rcx, rsi, 61
cmp al, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
add cl, -29 # instrumentation
lea rax, qword ptr [rdi + rdi + 42]
btr bx, 46
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
