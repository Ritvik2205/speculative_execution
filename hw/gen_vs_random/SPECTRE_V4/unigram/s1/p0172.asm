.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
xor dil, cl
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
or bl, cl
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
mul dl
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmp esi, 65
and bl, al
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rax, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rax]
movzx rax, bx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 45
or dil, dil
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
movzx rbx, cl
and dl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
cmovnb edi, ebx
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 80
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
adc edi, 82
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
and rsi, 98
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
add cx, 11
add dl, -114 # instrumentation
cmovl dx, ax
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
mov rcx, rax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
bts rdi, rdi
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
sub dl, dl
xor cl, -101
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
