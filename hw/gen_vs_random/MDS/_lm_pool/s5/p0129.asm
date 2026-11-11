.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
not bl
btr di, si
or ax, -11837
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
btc ecx, 7
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, 91
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
xor eax, 2063216578
or sil, -49
or rsi, 89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor dl, sil
and rax, 1886208862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
