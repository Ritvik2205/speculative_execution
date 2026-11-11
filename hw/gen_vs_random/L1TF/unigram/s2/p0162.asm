.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
adc dl, dil
and cl, cl
imul cx, si, 25
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rdx, rax
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
and cl, cl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
