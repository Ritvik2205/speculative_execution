.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 3
test al, 22
test al, cl
or bl, -62
and bl, bl
xor di, -83
test bl, dl
or bl, sil
test bl, -14
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
test al, 127
and ebx, 72
and al, 87
xor al, sil
or rcx, -17
or al, 37
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
