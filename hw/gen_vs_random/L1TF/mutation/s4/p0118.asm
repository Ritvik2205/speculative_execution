.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add bl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
adc cl, 62
or dx, -126
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 40
mov di, bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc ax, -8436
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
mov edx, edi
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
not bl
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
