.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, di
xor rcx, -2
jmp .bb_0.1
.bb_0.1:
or al, dl
xor sil, -15
test bl, cl
xor bl, cl
or bl, dil
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and cl, -6
jmp .bb_0.2
.bb_0.2:
or bl, sil
or ax, -11837
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
xor dil, cl
and rdi, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
