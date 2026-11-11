.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
and dil, -39
btr di, cx
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
or sil, -78
and sil, dil
or bl, 43
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and dil, -62
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
bts rax, 77
test al, dil
jmp .bb_0.2
.bb_0.2:
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
