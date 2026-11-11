.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg di
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 96
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 68
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 99
add bl, -23 # instrumentation
setnle sil
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
test bx, 13
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or dx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
