.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, al
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
imul al
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sbb dil, -106
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
neg edx
or ax, di
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
adc si, 6
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and cl, sil
neg edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
