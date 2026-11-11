.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
xor rdi, rdx
neg dl
lea si, qword ptr [rbx + rdx]
movzx ax, al
xor rdi, 4
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
not ecx
cmovnb ebx, eax
mov ax, dx
cmp ax, -15031
cmp rax, -120490246
lea si, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
cmovo rbx, rcx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 100
add al, bl
or cl, 23
and al, -127
and dl, al
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
sbb cl, 19
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add bl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and sil, -49
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
cmp edi, edx
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
mov edi, -1544998000
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
