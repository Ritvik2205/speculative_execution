.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
add bl, bl
dec rdi
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
sub rdx, 22
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 9
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
cmovnle si, bx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
or si, 24
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], eax
bswap rbx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
imul ax, bx, 95
sub esi, 29
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and bl, al
bt ecx, 45
neg ebx
test bl, bl
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
bts edi, 167
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
cmovnl rbx, rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rax, 2
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
or dl, bl
cmovle rdx, rax
imul cl
or al, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
