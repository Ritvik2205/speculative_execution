.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
cmp cl, 100
mul ecx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor esi, -112
imul si, bx, 66
xor bl, -126
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
add dl, 29 # instrumentation
cmovnl rdi, rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
or dil, bl
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
cmovnp cx, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rax
bt ax, 248
cmp eax, 512128713
cmp rdi, 28
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
sbb rdi, rax
mov si, -8007
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
xor dil, cl
bswap ebx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
xchg eax, eax
sbb dil, 8
adc esi, 54
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or dil, bl
xor ax, 13332
cmovbe ax, cx
sub bx, 24
imul ebx, ebx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
test ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
