.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, 73
sub rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
imul rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
sub sil, al
cmovb ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
cmovz esi, edx
or rax, 980130592
sub rbx, 101
and rbx, 45
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmovno ecx, eax
xor dl, -66
cmovnbe edx, eax
and cx, -117
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
cmovo cx, cx
xor bl, dil
imul di, si
cmovle si, ax
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rsi
sub eax, -672265139
neg cx
cmovnz rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
add edi, 59
cmovle rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
or rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
sbb bx, 87
adc al, -59
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
bts ebx, 189
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
and rbx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rbx], 16
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
add dl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
