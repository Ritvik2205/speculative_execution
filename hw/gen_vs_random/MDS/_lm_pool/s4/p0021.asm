.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
or al, dil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and cl, -111
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and eax, -85386306
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 43
test rbx, 21
xor cl, 83
and rax, 452940266
test cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
