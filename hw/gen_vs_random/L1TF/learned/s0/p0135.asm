.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
test bl, 12
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
or al, bl
sbb al, 61
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor dil, bl
xchg dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
