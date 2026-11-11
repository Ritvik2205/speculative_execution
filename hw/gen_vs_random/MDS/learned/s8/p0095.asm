.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor rax, -773894210
xor cx, -18
test bl, -114
xor al, dil
xor al, -89
xor cl, 24
or cl, 6
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
or al, -75
and cl, -6
test al, 22
jmp .bb_0.2
.bb_0.2:
test sil, -96
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
