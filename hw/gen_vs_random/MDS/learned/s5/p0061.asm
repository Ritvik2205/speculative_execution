.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
xor rsi, -117
test cl, dl
and edi, 23
and bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rax, 79
xor al, -4
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
test bl, -114
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
