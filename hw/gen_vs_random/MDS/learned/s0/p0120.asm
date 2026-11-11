.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 46
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rax, 627810357
and si, -121
test dil, -80
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
or al, -24
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor sil, -126
or sil, dil
test dil, cl
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
