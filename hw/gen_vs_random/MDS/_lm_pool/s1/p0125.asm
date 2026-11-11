.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
or rax, -1523798580
test cl, 0
test sil, dl
and bl, bl
xor rdi, -9
test rbx, 64
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
test bl, -14
jmp .bb_0.2
.bb_0.2:
test al, dl
jmp .bb_0.3
.bb_0.3:
test cl, 91
test cl, -18
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor dl, bl
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
