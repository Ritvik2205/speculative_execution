.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and dil, -62
and cx, -8
and al, cl
or al, -24
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test cl, 73
and ax, 13090
test sil, bl
or al, dl
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
