.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
or al, dil
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 86
and dil, dil
and eax, 561041355
xor ax, -6793
or edi, ebx
and cl, -111
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and cl, dil
and dil, -39
jmp .bb_0.1
.bb_0.1:
or al, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
