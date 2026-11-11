.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rbx + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
test eax, eax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
lea esi, qword ptr [rbx + rsi]
cmovnle rax, rcx
neg bl
neg rbx
add bl, -54 # instrumentation
setz al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
setnz dil
cmovle rcx, rcx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
