.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
sbb edx, ecx
add rbx, 21
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
mov cl, sil
xor di, 49
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 29
or dl, dl
test al, al
test cl, 78
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
test bl, al
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
imul di
xor al, -66
sub cl, cl
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 75
and esi, 61
mov al, bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 27
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
xor bl, cl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
sub al, al
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
btr rdx, 9
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 95
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
mov al, -71
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
sbb al, 102
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
cmovz rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
