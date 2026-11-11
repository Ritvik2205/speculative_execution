.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
imul di, si
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 15
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add cl, -38 # instrumentation
setbe al
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmovs rax, rbx
cmp cl, 74
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
cmovnle rsi, rbx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
cmp di, 80
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
bts eax, 209
movzx ecx, sil
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 78
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
mov rsi, rdi
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
imul eax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ebx, edi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
mov dil, -118
sub rdx, 22
cmovb edi, edi
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
sub eax, 2
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
movzx edx, sil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
