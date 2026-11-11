.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
test dil, -107
test dl, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 52
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
adc rax, 41
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmovno edi, esi
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
lea rdx, qword ptr [rsi + rax + 67]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
