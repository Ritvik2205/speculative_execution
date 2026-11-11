.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
sub al, cl
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
or dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 58
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 59
adc cx, -30
neg rdx
setnp dil
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 33
add bl, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
