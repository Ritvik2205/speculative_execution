.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
movsx esi, sil
lea ax, qword ptr [rdx + rdi + 43]
add rdi, rax
bt dx, 223
btr ecx, eax
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
xor dil, dl
lea esi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
lea ax, qword ptr [rsi]
add bl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
