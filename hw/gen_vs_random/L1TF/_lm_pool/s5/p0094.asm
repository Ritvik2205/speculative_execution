.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
cmp edi, 36
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
test al, -82
test al, -84
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
