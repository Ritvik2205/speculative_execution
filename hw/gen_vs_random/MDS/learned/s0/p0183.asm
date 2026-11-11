.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
xor cl, dl
or rbx, -77
and al, cl
btr esi, edx
or cl, -77
bts rbx, 56
jmp .bb_0.1
.bb_0.1:
and sil, -56
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test dl, -85
test eax, -675944960
and ax, -122
xor dl, -43
cmovnbe rdi, rbx
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
