.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
test sil, dil
test cl, 73
test al, 91
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 77
bts eax, 222
and cl, -111
xor cl, 55
test eax, 343548072
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor al, dl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
