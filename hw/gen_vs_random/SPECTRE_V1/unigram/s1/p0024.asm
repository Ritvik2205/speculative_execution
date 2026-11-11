.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
sbb ebx, 58
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 68
sub dil, sil
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
or ax, 12618
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 22
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
lea rcx, qword ptr [rsi + rdx + 65]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
