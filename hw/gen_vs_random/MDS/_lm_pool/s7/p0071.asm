.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
xor ax, -4010
and cx, -2
xor eax, 1640090871
not sil
lea ax, qword ptr [rcx + rdi + 86]
test dil, -80
and bx, 51
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or al, -22
test al, dil
test bl, -14
and cl, sil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or bl, -54
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
