.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
jmp .bb_0.1
.bb_0.1:
or dil, -41
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 71
or rax, 1461812833
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
jmp .bb_0.2
.bb_0.2:
or al, 54
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
or sil, cl
test cl, -113
or sil, -78
xor dil, -5
not al
test dl, bl
sub dl, 76
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
