.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
or cl, 105
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
jmp .bb_0.2
.bb_0.2:
add dl, sil
or al, sil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
