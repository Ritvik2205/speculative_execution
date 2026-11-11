.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
cmovl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
cmovbe cx, bx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
add dil, -94 # instrumentation
cmovnle rcx, rdi
movzx dx, al
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
sub dx, dx
cmovnz esi, eax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
xchg di, cx
mov bl, 29
neg ax
and rbx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
test dil, al
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
movzx edi, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
movsx bx, cl
xchg rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
or cl, cl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
mov ax, si
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
cmp al, dil
add dl, -94 # instrumentation
cmovnle rax, rdx
add cl, -20 # instrumentation
adc al, dl
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
neg esi
cmovo ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
