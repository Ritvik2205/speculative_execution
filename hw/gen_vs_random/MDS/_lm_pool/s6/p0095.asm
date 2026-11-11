.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
test dil, al
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
test dil, 46
xor al, -26
jmp .bb_0.1
.bb_0.1:
xor ax, -1005
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
or rcx, -17
and bl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bts eax, 222
and dl, cl
xor eax, 1640090871
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
