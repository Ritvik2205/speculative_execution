.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -15653
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
sbb ax, -26881
and cl, 58
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
cmovno rbx, rdi
sbb ax, -19255
test eax, -818909344
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
cmovz ecx, edx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, esi
test al, bl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 17
test rax, -344032571
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
test bl, sil
mov rsi, rdx
add di, -74
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
sub dl, dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
sbb cl, 20
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
imul cl
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
not dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
imul esi, edi
mov rcx, 4219775168754920203
not si
cmovnle eax, edi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
movzx edx, sil
or ax, -12775
bt ebx, 228
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
