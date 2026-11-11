.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 32
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
add ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 41
mov dil, dil
cmovb eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
mov bl, bl
and ax, 35
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
add dx, -90
cmovnbe rax, rsi
sub dl, dl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
cmp al, dl
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
or ecx, edx
cmp cl, 68
cmovns bx, ax
and dl, al
and rcx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 28
cmovnle ebx, eax
xor bx, 42
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
add dil, al
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 94
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
btc di, bx
movzx rdi, bx
and cl, al
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
or sil, 80
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
sub cl, cl
and al, dil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
