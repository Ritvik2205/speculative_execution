.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rdx, rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and sil, 52
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea esi, qword ptr [rbx]
and cx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
