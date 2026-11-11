.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
bts rdi, 130
jmp .bb_0.1
.bb_0.1:
test dl, 9
bts rax, rdx
btc cx, 115
xor dil, -70
not dl
or bl, al
and al, sil
or al, dl
xor dl, -19
or rcx, 54
xor ax, -5889
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
