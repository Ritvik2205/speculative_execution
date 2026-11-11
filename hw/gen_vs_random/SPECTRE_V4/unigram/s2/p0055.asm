.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 98
imul cx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
cmp sil, -100
movzx edi, dil
cmovno di, si
mov al, 125
movzx edx, sil
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
sbb eax, 727775941
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
xor rax, -117
cmovns eax, ebx
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
inc eax
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 53
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovbe si, si
cmp al, al
dec di
cmovp rbx, rcx
sub cx, cx
sbb dil, 87
test edx, 1479885278
add di, si
cmovl ebx, esi
bt si, 18
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
xor esi, -82
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
xor rax, 93
bts eax, 38
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
mov cl, dil
add rdx, 68
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
mov bl, sil
cmovo si, dx
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
