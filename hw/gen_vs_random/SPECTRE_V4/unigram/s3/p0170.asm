.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ebx, edi
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
cmovs esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
xor dil, 65
bswap rsi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
cmp ax, 23131
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
btc edi, 29
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
movzx rax, si
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 75
cmovb cx, cx
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
sbb dl, dil
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edx
add esi, eax
xor dl, al
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
sub dl, 43
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
sbb dl, -99
or ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
sbb al, 32
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
test di, 100
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
sbb bl, -94
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
mul cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
xchg esi, ebx
sub dil, al
and al, -127
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and dx, 1
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
imul ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
xor edx, edi
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
sbb bl, -94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
