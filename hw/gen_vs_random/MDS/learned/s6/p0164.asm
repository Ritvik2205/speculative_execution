.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, ax
and cx, -8
jmp .bb_0.1
.bb_0.1:
test sil, -96
not cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test al, bl
or dl, bl
xor dil, -70
test eax, -1634766116
bts rbx, 56
and eax, -574348013
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 40
or al, 25
xor dil, -3
and dl, -73
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
