.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo cx, dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
cmovno bx, di
test dil, dl
test ebx, -961564216
or bl, al
xor rcx, -2
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, 66
xor cl, dl
and rax, 498847670
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
