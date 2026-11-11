.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
xor edi, 127
and rbx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rbx]
mov dx, 22195
sbb ecx, 36
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 90
test dil, 64
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
mul ax
add ecx, edx
xchg sil, dil
sbb dl, 75
or sil, -47
movsx rax, sil
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xchg rax, rcx
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
add dl, 59 # instrumentation
cmovno rdx, rcx
add dl, 68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
and dil, -120
sub sil, -35
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovnbe rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 15
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 4
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
sbb di, -105
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
add rbx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
add rcx, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
