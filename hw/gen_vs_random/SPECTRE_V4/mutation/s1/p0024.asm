.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
movzx rdx, bx
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
adc cl, 6
cmovbe edi, ecx
xchg rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp dil, -29
test sil, bl
cmp ebx, -27
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and al, -12
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
xor esi, esi
adc bl, 97
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
mov dl, al
cmovl rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
btc ebx, edi
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
test eax, 1340292467
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
test ax, 2960
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
movzx di, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
mov al, bl
bts rbx, rcx
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
bt cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
