.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
xchg ecx, edx
add cl, -127
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
