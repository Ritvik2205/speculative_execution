.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, sil
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
adc edi, 117
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
cmp cx, 28
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
bts edx, 39
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
add esi, -124
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
xor al, 45
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
add dl, -70
lea ax, qword ptr [rbx + rbx + 56]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
