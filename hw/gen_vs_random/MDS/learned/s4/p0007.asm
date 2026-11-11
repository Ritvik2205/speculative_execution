.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
test al, cl
test al, dl
or sil, dil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 38
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
bt dx, cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
test al, bl
jmp .bb_0.1
.bb_0.1:
and cl, -19
not al
btc rax, 106
test dl, 9
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and al, 75
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
