.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and al, 14
test eax, 1838539683
and al, -54
test al, cl
test cl, dil
btr ax, di
jmp .bb_0.1
.bb_0.1:
test al, -7
and cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor rax, -1128378406
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
