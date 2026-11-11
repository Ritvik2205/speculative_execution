.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
cmovnz rbx, rax
adc al, -86
test al, -24
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
adc dl, sil
xor al, 55
xor si, -73
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and di, si
or eax, ecx
imul dil
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
movzx rcx, ax
imul ecx, ecx, -3
sbb dil, 69
and rsi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rsi]
cmp edx, esi
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
xchg dx, ax
bts di, 72
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
cmovnz rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 69
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
not ax
xor dx, ax
add dil, -96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 54
sub edi, edx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
imul rcx, rbx, 68
sbb al, -3
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and cl, dil
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
dec rsi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 71
movzx si, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
