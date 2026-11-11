.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
mov dl, dil
adc bx, 35
add bl, -95
lea cx, qword ptr [rdi]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor edi, 115
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
