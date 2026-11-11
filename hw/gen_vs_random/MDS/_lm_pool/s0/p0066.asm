.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
test bl, sil
bt edx, eax
test cl, 54
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor dil, -124
bt bx, cx
or cl, 39
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 27
btr ax, bx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor al, -26
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
