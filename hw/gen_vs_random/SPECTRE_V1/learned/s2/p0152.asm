.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
sbb bl, cl
sub al, -89
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
sub bl, -6
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 54
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdx]
add dil, -75
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
