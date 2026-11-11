.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -62
test dil, bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
or al, cl
test cl, -123
jmp .bb_0.1
.bb_0.1:
test sil, bl
jmp .bb_0.2
.bb_0.2:
xor di, -83
btr si, ax
or sil, -78
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
