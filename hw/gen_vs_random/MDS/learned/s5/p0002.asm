.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test cl, sil
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or dil, -76
xor dl, al
jmp .bb_0.1
.bb_0.1:
and eax, 33
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
xor al, bl
jmp .bb_0.2
.bb_0.2:
test rcx, -613256812
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
