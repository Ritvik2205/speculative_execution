.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 95
cmp rax, -72548874
cmp cl, 37
dec bl
cmp dl, 71
movzx edi, bx
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
