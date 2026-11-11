.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
mul dx
sub al, dil
add cl, 106 # instrumentation
cmovnp rdi, rdx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
mul dx
dec cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
or edi, 42
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
xchg edx, edi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 77
not rbx
cmovs ecx, esi
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
or edi, eax
xchg si, cx
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
sub esi, 21
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
adc dl, bl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
sub al, 98
cmp al, 19
xor esi, ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
