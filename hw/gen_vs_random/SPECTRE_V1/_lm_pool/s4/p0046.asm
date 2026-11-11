.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
btc rdx, rdx
sbb al, dil
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, dil
test si, 26
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
test al, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
