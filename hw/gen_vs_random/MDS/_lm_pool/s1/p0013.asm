.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor sil, 94
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
or dil, dl
and al, al
jmp .bb_0.1
.bb_0.1:
and dil, dl
xor rax, -1499464454
test sil, 41
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and cl, dil
xor dl, -43
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
xor dil, 124
xor cl, al
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
