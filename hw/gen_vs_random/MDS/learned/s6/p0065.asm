.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
bts rsi, 221
xor al, 115
xor rax, -91
btr cx, ax
btr si, cx
and dil, 125
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
xor cl, 24
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
