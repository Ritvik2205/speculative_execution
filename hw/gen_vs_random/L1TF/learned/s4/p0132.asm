.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 100
sbb al, 92
xor eax, -2123070438
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
