.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
btc eax, eax
add dl, 43 # instrumentation
adc cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
lea edi, qword ptr [rdi]
cmovz eax, edi
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
cmovl dx, bx
xor ax, dx
add cl, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
xchg eax, ebx
sbb al, 48
and dl, -98
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
