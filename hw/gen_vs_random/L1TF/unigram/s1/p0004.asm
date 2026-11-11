.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
add dx, 96
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
mov al, al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and cx, 127
bswap esi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
