.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 92
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
cmovno rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
mul bl
sub dx, si
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
add si, 81
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
add dl, al
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
imul eax, ecx, -17
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
btc edx, 164
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or rbx, 69
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
bswap edx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
test ax, -6584
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
imul ecx, ecx, -3
sub bl, al
cmovp rsi, rcx
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
xor al, -84
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
bswap rsi
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
bt dx, 193
mov rdi, rax
imul dl
or esi, edi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub eax, -1627558845
dec dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 7
movsx rdx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
