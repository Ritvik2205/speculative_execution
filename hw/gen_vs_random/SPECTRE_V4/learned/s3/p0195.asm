.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -101
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb dil, 97
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
adc eax, -79
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
xor di, bx
xor eax, 181978569
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
cmovz esi, ebx
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 93
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
add bl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 98
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
sub cl, cl
and rdi, -2
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
cmp dx, di
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
add rdi, -94
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
test rcx, -2118888343
adc al, sil
test eax, 1880179600
or sil, 52
add bl, dil
test rax, -344032571
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
xor cl, bl
mov edi, -1544998000
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 20
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
add bx, 110
and di, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
