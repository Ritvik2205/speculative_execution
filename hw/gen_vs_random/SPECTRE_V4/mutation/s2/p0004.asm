.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dx, 22195
sub al, 63
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
mul rbx
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
add eax, -1628652110
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
cmovns dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
movsx eax, di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
xchg cl, cl
xor rax, rcx
adc bl, 127
cmovl bx, cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
sbb edi, -94
cmp al, -78
movsx eax, dl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
adc al, al
or ax, 7381
cmovnp di, ax
btr cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
sbb al, 31
cmovp rbx, rbx
xor rcx, -111
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and cl, dl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
xor al, cl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
test bl, dil
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
