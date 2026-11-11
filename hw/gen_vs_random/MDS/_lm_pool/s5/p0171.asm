.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
xor cl, 55
xor dil, -124
and eax, 561041355
xor sil, al
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
or dl, cl
test al, 127
jmp .bb_0.2
.bb_0.2:
or dl, sil
or al, dl
and dl, bl
test edx, -372470678
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
