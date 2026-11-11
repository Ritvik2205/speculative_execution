.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and dil, 125
or sil, dl
xor ebx, 30
and bl, dl
jmp .bb_0.1
.bb_0.1:
or dl, cl
cmovns cx, ax
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and dl, sil
and si, -121
and bl, sil
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
