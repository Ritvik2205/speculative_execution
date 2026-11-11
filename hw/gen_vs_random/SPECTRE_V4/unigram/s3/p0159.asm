.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
xchg rax, rax
imul dx, cx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
sbb sil, -124
mov al, dil
cmovle rdi, rdx
xchg ebx, esi
cmp sil, 113
adc dl, sil
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
sbb ecx, 82
inc cl
mov ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
bt rdx, 94
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
or rcx, 53
xchg esi, edx
add dl, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 72
or eax, -1341747033
and bl, -119
sub al, cl
xor cl, 88
mov bl, cl
dec bl
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
not ecx
sub cl, -119
sub cl, -94
or dx, 84
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
imul rax, rbx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
cmovz si, bx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
and bx, si
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
