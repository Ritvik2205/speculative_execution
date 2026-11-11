.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
test cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
and al, 106
or dil, 16
or rax, 1020005579
or dil, sil
xor rdi, -9
test al, -81
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
or sil, -49
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 37
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
