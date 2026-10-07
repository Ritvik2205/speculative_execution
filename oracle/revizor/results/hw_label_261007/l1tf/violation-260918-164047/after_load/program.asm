.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi] 
lfence
add bl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi] 
lfence
adc cl, 62 
or dx, -126 
add bl, bl 
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 40 
lfence
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx] 
lfence
setp cl 
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl 
lfence
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79 
lfence
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx] 
lfence
btr ax, 185 
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
