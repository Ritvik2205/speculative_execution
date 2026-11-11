.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 98
test sil, -96
and al, -54
and si, -121
xor sil, -14
and al, 75
xor eax, -885380838
jmp .bb_0.1
.bb_0.1:
test dil, sil
jmp .bb_0.2
.bb_0.2:
and al, -54
or cl, bl
xor cx, -18
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
