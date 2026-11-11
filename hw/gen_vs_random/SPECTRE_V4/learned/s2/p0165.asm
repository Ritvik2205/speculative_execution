.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
bts si, 30
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
and al, 33 # instrumentation
cmovnle eax, edi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
or edi, 10
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 37
cmovb si, dx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
and cx, bx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 14
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
cmovle si, si
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
bt esi, edx
cmovns cx, cx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
sub dl, dl
sbb cl, -104
cmovnb bx, bx
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test ecx, 12
cmovb di, di
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
imul rdi, rsi, 57
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
sub bl, sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 52
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
