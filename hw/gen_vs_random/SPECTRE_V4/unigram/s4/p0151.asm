.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
imul rsi
and rdi, -2
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
movzx ecx, bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
add al, dl
btc di, 84
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 70
add ax, ax
or al, 95
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
or ecx, 64
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
adc eax, -1513455903
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
cmp sil, 88
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
dec ecx
xor sil, 56
add di, di
add dl, -99 # instrumentation
not ecx
movzx cx, cl
and rsi, 51
cmp al, 81
sbb dl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 80
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 93
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 82
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
sub bl, 17
add dl, dl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovz dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
