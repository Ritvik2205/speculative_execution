.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
xor al, dil
or al, -24
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or sil, al
or sil, -78
xor dl, cl
xor al, dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
bts edi, 248
and esi, 86
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and al, 84
test eax, -1634766116
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
