.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 44
or sil, dl
or al, -58
not sil
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
test eax, 298249463
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or cl, -77
or bl, -62
and al, -55
or al, dil
xor sil, -15
bt dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
