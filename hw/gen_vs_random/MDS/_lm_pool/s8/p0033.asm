.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 571592471
xor al, 115
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and cl, -71
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
xor cx, -18
or al, -17
test cl, dil
bt dx, si
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
