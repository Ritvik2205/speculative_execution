.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and ax, 32540
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bx, 28
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
