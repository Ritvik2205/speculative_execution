.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
cmovns cx, si
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and ebx, 49
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or cl, -77
and cx, -8
xor ax, 23633
xor al, -89
and dl, dl
and al, dl
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
