.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
lea edx, qword ptr [rax + rcx + 71]
sub cl, -49
sub ecx, 2
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
bt edx, eax
seto bl
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
sbb dil, 74
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
movzx rbx, cl
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
