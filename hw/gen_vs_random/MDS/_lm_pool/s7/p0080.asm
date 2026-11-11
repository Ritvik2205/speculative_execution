.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or sil, al
or eax, edx
or ax, 85
and dil, dil
or sil, -49
or al, 37
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and dil, -39
and cl, cl
or sil, al
and sil, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
