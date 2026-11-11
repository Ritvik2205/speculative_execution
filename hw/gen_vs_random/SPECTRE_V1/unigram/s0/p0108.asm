.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rbx, -128
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
add al, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 91
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 36
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo eax, eax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add cl, -26 # instrumentation
cmovnp cx, bx
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
btc rsi, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
