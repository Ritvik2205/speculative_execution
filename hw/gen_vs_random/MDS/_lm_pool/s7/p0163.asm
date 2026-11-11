.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
test eax, -409834435
or bl, bl
or sil, dl
xor sil, cl
and sil, 74
and sil, -9
xor cl, 98
test esi, 425331143
xor al, 122
and al, 49
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor al, 122
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
