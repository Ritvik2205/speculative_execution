.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 28
sbb ecx, 80
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
add dl, 47
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rdi, rax
sub al, -89
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
