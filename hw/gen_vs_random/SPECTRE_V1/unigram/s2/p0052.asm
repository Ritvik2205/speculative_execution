.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 63 # instrumentation
cmovl dx, ax
add cl, 75 # instrumentation
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
cwd
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
bts rdx, 89
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], cx
sbb rbx, 34
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 37
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
mul al
lea edi, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
