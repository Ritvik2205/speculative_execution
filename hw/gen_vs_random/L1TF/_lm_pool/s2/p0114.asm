.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 87
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
add cl, -20
xor bl, al
xor cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
