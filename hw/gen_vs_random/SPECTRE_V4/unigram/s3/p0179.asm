.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 28
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 83
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sub bl, dil
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
test dl, -125
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
cmovbe ax, cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
btc ebx, esi
xchg esi, ecx
add dil, -61
mov dl, -124
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
btr ax, 109
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
add sil, -18
cmovnz dx, ax
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
add dl, -12 # instrumentation
cmovp ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 88
mov al, -71
cmovo edx, esi
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
add cl, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
mov eax, ecx
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
cmovnbe rbx, rdx
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
bts bx, si
cmp rcx, rax
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
xchg rbx, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
adc rbx, 60
and edx, 52
sbb eax, ebx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
imul esi, esi, 60
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
