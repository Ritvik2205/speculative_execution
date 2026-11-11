.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, bx
or rax, 52
and dil, dil
jmp .bb_0.1
.bb_0.1:
and dl, -73
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and dl, -73
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or bl, cl
test al, dl
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
