.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 12
xor dil, sil
xor al, cl
and dil, 58
add bl, -66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 64
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
lea rax, qword ptr [rbx + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 50
or rax, 699028911
test rcx, 90
sbb ax, -4845
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
dec ecx
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
imul ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
