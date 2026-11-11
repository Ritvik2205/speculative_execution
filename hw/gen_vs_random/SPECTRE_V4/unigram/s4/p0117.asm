.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
cmovb rdi, rdx
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
sub bx, ax
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], 65
btc ecx, 233
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
adc bx, 52
movzx rdx, dil
test bl, -29
mov ebx, edx
bts dx, ax
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
btr rdi, rdi
neg ebx
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
add bl, 95 # instrumentation
mov dl, 2
and cx, -117
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and al, 41
sub bl, -89
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
cmovb si, ax
xor cx, -80
imul si
movsx edi, cx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
add cl, al
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
mov ecx, -405458789
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 59
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
test sil, dl
or al, -19
cmp bl, dil
movzx cx, dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
