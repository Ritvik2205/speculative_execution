.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dil
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and eax, 1032144833
dec edi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 61
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 25
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 49
cmovz rsi, rdi
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
add al, 39 # instrumentation
cmovnb dx, ax
add edx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
