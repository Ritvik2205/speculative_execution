.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and sil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
xor bx, 94
not bl
or ax, 16560
or bl, -54
or eax, 678817098
and al, 14
and bl, 68
test sil, dl
test al, cl
or al, al
and sil, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
