.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
add rax, 909978580
sub cl, sil
add cl, -36
bts ax, 201
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
cmp ebx, 11
xor sil, 64
sbb dl, cl
xchg ebx, edi
cmp dil, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
