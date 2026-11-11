.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
btr dx, bx
and cx, -2
and cx, -2
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and ebx, 76
and cl, -19
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dil, -78
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
test sil, -96
and al, dil
test dil, 46
xor dil, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
sbb al, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
