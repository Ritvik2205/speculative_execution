.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, -1434249782
add cl, cl
dec rdi
add bl, -72
or bl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
adc rdi, rdx
cmovnle si, cx
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
sbb dl, dl
cmovnl rax, rax
movzx ecx, sil
test ebx, -595096626
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnp ecx, ebx
and bl, dl
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, ebx
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
sbb cl, 19
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sbb eax, 1081973675
cmp rax, -120490246
cmovp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
