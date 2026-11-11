.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
cmp dl, cl
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 93
xor dl, dil
sub al, -75
and sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
