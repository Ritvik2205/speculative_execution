.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 75
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
adc al, -92
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
add bl, -5 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
mov cl, cl
xor dl, 71
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc cx, -30
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
test bl, -8
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
