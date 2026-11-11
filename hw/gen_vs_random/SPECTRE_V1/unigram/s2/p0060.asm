.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
add cl, 72 # instrumentation
adc cl, 68
movzx ebx, di
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 13
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
add cl, 43 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 74
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi + rdi + 36]
sbb dil, -93
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
sub sil, sil
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
