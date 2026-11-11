.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 63
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
add bl, -18 # instrumentation
mov rdx, rsi
or sil, cl
cmovs rdx, rax
mul dl
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
and cl, al
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
xor al, dl
add bl, -115 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 67
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], ecx
test bx, -1599
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 83
or ax, dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
add cl, -37 # instrumentation
adc ecx, 100
xchg edx, edi
test edi, -1249897727
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 6
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 63
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 92
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and cx, 17
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 84
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
test edx, 573099753
cmovb esi, ebx
cmp dl, sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 87
imul ecx, edx, 16
xchg rdi, rdx
adc rsi, rbx
or eax, 1802312508
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
sbb rax, rsi
xor bx, ax
cmp dil, -124
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
cmp rdi, 22
or sil, 47
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
sbb sil, dil
cmovnp ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
