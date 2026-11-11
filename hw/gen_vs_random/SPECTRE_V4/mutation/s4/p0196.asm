.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 95 # instrumentation
mov dil, 16
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and dl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
imul ebx
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
cmovb ax, cx
sub bl, al
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
bts esi, ebx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
sub si, -92
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
add ax, -9762
adc cl, 111
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
or rbx, -108
or cl, -55
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
adc al, 116
adc cl, -66
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
dec bx
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
cmp dl, 23
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
bt bx, ax
bt cx, 31
add dl, 59 # instrumentation
cmovno rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
