.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, ax
and dx, 3
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xor dil, -3
or al, 16
test esi, 425331143
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
and sil, -56
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test sil, cl
and cx, -8
xor cl, 24
and dil, bl
and rax, -2058103810
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
