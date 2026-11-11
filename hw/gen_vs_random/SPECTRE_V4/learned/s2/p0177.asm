.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
xor cx, ax
cmp al, -116
xor dil, 117
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or dl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
xor cl, sil
or al, al
sbb cl, 45
cmp cl, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
