.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sbb bl, dil
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
xor bl, cl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
lea cx, qword ptr [rax]
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
