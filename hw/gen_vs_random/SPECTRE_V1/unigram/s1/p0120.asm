.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, 3
add dl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
cmp cl, cl
inc bx
add bl, cl
sbb ebx, 88
adc bx, 80
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
lea ebx, qword ptr [rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
add cl, 40 # instrumentation
lea cx, qword ptr [rsi + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 81
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
