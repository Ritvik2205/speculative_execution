.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
test ecx, -1843375753
test al, 22
xor sil, 27
or al, 54
or al, -22
xor rcx, 71
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
or al, -22
and si, -121
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
