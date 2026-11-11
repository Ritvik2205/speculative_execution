.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
or bl, 127
and cl, cl
bts rdi, 130
jmp .bb_0.1
.bb_0.1:
and dil, cl
not cl
test esi, 425331143
jmp .bb_0.2
.bb_0.2:
or sil, dl
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and ax, -10351
and al, bl
xor cl, 15
xor bx, 75
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
