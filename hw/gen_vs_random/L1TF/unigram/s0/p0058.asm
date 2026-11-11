.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, cx, 81
movzx rax, bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 89
lea ax, qword ptr [rax + rdx + 100]
adc ecx, ebx
add cl, 95 # instrumentation
mov sil, dil
adc cl, sil
or cl, 23
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bt edi, esi
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
imul ax, bx, 71
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
xchg cl, sil
lea ebx, qword ptr [rdi + rcx + 25]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
