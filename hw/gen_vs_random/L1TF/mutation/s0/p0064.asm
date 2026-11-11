.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 40
setp cl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btr ax, 185
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
or dx, -126
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
adc cl, 62
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
add bl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
