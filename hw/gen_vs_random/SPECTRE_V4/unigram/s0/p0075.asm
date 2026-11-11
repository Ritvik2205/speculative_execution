.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -12 # instrumentation
cmovp edx, edi
sbb esi, 95
add sil, 68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
dec eax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 74
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
movsx cx, cl
cmp dl, sil
mov rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
btr cx, 252
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and al, -87
mov dl, al
and si, -70
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and sil, -84
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and dil, sil
add bl, al
cmovnb rbx, rdx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], di
movzx eax, di
mov dx, 11552
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
xor sil, 39
sub dl, -16
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
add al, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
adc al, 116
adc dl, dl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ebx
add bl, -84 # instrumentation
cmovb cx, ax
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
and rdx, 84
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
