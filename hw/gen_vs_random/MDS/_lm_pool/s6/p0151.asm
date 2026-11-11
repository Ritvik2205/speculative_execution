.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 45
or bl, dil
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
test sil, al
xor rax, -404206377
xor sil, -126
or al, cl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test al, 91
and dl, -73
bt ax, dx
or al, dl
or al, -22
btc edi, 230
or bl, dl
or sil, -78
xor dil, al
test eax, -1634766116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
