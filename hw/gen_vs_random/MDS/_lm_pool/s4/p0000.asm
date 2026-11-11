.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
bts rsi, rbx
and al, 82
or bl, dl
xor dl, dil
xor dil, al
or ax, -23697
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
jmp .bb_0.1
.bb_0.1:
or ecx, esi
jmp .bb_0.2
.bb_0.2:
and eax, 461212071
xor rax, -1657511731
test cl, dl
and rdi, 66
and al, dl
test dil, dl
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
