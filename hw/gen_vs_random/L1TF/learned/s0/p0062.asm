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
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
setp cl
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 82
add dl, bl
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea eax, qword ptr [rdx + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 7
add dl, 31 # instrumentation
cmovnl si, si
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
