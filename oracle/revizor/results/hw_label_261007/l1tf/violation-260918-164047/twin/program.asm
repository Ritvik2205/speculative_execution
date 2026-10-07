.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rsi], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
lfence
idiv word ptr [r14 + rsi] 
add bl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
cmovnp cx, word ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rsi] 
adc cl, 62 
or dx, -126 
add bl, bl 
and rax, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rax], 40 
and rcx, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rcx] 
setp cl 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp rdx, qword ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rcx], dl 
and rbx, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rbx], -79 
and rbx, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rbx] 
btr ax, 185 
and rcx, 0b1111111111111 # instrumentation
lfence
add qword ptr [r14 + rcx], rax 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
