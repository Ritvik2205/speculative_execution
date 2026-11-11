.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
mov dl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
adc ecx, 78
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 39
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and dx, 61
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
movsx eax, al
not rsi
adc eax, -655457029
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
add dil, 72
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
