.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -36
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or al, sil
or sil, dil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test dl, dil
and ecx, -104
or bl, 43
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
and di, ax
jmp .bb_0.2
.bb_0.2:
and cl, bl
test bl, dil
xor bl, cl
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
