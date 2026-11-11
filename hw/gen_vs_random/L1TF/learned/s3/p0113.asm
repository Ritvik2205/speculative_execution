.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
test bx, 68
sub cl, 86
xor eax, -69
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
dec bl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
