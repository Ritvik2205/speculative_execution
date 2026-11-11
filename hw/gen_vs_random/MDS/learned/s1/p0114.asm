.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -6
jmp .bb_0.1
.bb_0.1:
and rcx, -63
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
xor rax, -1128378406
xor al, -26
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and al, -114
or bl, al
xor dil, sil
bt di, bx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
