.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -885380838
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
bts rbx, 115
xor al, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
test cl, dil
and ecx, -104
or bl, -54
or cl, 7
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test esi, 1857129931
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
