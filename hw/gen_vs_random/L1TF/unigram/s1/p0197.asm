.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
xor cl, cl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
xor dl, -82
jmp .bb_0.1
.bb_0.1:
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 56
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 17
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
