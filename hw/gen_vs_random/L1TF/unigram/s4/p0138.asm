.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rdx, 12
xor cl, sil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 46
neg rax
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
not dil
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
cmovno eax, eax
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
