.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and ax, 27170
test al, cl
xor dil, 8
and al, 106
or bl, bl
xor al, dl
bt ax, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
jmp .bb_0.1
.bb_0.1:
test al, -81
xor sil, bl
jmp .bb_0.2
.bb_0.2:
and cl, dil
or al, -22
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
test eax, -409834435
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
