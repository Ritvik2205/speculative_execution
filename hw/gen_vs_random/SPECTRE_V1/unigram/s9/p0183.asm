.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
bts rbx, 79
bt edx, 72
adc edx, 4
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 23
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
add bx, cx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
sbb dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
