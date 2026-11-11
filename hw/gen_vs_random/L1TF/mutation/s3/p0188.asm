.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
mov edx, -377652802
sbb di, si
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
lea rax, qword ptr [rbx + rsi]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
add al, 87 # instrumentation
cmovo rcx, rdi
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
xor esi, eax
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
setnz dil
test eax, eax
neg rbx
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
