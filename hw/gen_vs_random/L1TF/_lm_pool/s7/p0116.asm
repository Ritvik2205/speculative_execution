.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
test al, -84
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sbb dl, dil
add edi, 8
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
add al, -102
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
