.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, ax
xor rdi, -9
btr di, si
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
test al, 91
and cl, -19
and rax, 41
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
xor cl, 15
and cl, 79
and dil, -62
xor sil, 94
test dil, 46
or al, 25
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
