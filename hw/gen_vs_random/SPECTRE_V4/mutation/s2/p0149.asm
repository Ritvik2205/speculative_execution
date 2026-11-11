.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
imul sil
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
bt ax, 84
cmovnb si, bx
adc sil, -2
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add eax, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add dl, 77 # instrumentation
cmovno dx, bx
mul cl
and dl, dl
test bl, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
adc al, 41
sub rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
bts dx, 96
add cl, -6 # instrumentation
cmovo rsi, rax
xchg bx, bx
xor al, -40
xor dl, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
or rsi, rsi
cmovz edi, esi
and al, dl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
xor rax, 93
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xchg dx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
btc rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
mov rdi, -3495947874455269481
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovns rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
