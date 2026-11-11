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
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 63
lea ax, qword ptr [rbx + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, esi
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
bt ecx, 46
lea cx, qword ptr [rax + rax]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 71
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
