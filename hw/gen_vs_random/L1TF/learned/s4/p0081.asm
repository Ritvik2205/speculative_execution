.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 49
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
mov ax, cx
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
sbb sil, -19
xchg dl, sil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
bt edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
