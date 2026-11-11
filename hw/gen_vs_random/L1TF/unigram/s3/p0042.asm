.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, 120
add dl, 21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
lea eax, qword ptr [rdi]
setp cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
mov di, ax
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
sub di, 75
bts rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
