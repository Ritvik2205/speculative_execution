.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts bx, si
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
inc sil
mov ecx, eax
dec cx
xor ebx, eax
cmovnle bx, di
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
cmp rax, -1547540200
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
sub al, al
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
or sil, al
or sil, sil
test rdi, rdi
cmovnp ebx, ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
sub rbx, 101
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
add edi, ebx
test dl, -102
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
inc cl
cmovnz edx, edx
and cl, -128
and edx, eax
bt rbx, rbx
cmp edx, -95
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
btc rdi, rcx
cmp bl, bl
test di, -19523
sbb si, 72
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
cmovb ax, dx
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
movsx edi, di
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
cmovnl si, di
xor sil, sil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
