.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea esi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
adc rax, 89
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rcx + 18]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 82
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
or dl, bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
xor dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
