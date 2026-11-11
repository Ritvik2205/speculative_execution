.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
xor bl, cl
xor ax, -12492
xor dl, bl
and sil, -56
xor dil, -70
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dil, -39
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
