.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
xor sil, 27
test cl, bl
xor bl, dl
or dil, -41
test cl, -86
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and cl, 79
test ecx, -1843375753
test edx, -1561252782
xor bl, -61
xor di, 40
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
