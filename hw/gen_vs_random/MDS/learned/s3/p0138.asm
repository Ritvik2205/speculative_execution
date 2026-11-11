.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 76
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or al, -78
test dl, dil
xor rax, -1128378406
or dx, 125
and edi, 23
test cl, -113
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 57
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or al, -22
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
