.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dx, 11552
sub al, 86
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
add eax, -105
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
adc bl, -58
cmovl bx, cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
sbb edi, -94
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and dil, cl
or rdi, rdx
test dil, 64
sub rax, 120
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor ebx, ecx
cmp rsi, 22
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
xchg di, bx
imul al
xor ax, 13332
add ecx, 99
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sub rdx, rsi
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
or dl, 71
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
