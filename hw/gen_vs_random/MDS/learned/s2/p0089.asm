.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and sil, 74
bts si, 158
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
jmp .bb_0.1
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, 22
or bl, 43
not dl
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
