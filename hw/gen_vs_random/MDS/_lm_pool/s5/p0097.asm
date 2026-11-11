.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
btr edi, esi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test cl, al
test eax, -571234566
and cl, -19
test al, -7
and al, cl
or rsi, 91
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and al, 14
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
