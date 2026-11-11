.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 678817098
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and eax, -574348013
bt ax, si
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor dl, 8
and rcx, -63
and dl, sil
or cl, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
test al, 66
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xor sil, cl
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
