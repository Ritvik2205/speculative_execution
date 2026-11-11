.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, 3
mov dl, cl
movzx edi, dx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
cmovnl rdi, rsi
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
add dl, 74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
add cx, 46
xchg edx, edi
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 42
imul rcx
add dl, -91 # instrumentation
cmovl rbx, rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
and al, -124
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
cmp al, dl
test ebx, 85
test edi, edx
and ax, 16313
cmovp rbx, rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
sbb dil, al
xor dil, 37
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], esi
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
sbb ax, -30070
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
cmp cl, sil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
test cx, di
cmp si, 109
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovnb cx, di
cmovnle rcx, rsi
add si, si
xchg rcx, rdx
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
