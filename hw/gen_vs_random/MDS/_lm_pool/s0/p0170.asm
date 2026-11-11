.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
or bl, sil
test al, -7
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
or dl, dil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and cl, cl
btc dx, 146
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
or sil, sil
and al, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and al, 35
and cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
