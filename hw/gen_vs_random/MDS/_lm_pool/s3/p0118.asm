.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
xor cl, 98
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or sil, sil
bts rcx, 51
and rax, 498847670
and sil, al
jmp .bb_0.1
.bb_0.1:
or cl, 7
xor cx, -18
test sil, cl
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
