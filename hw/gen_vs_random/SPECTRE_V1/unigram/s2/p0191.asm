.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rcx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rcx]
and sil, 87
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 59
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 63
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
test ax, 18607
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
bt ax, cx
cbw
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
setnz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
