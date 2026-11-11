.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sbb eax, -1688332460
and cl, 58
btc cx, si
cmp cl, dl
sbb al, -47
cmp rax, 2115020203
imul rsi, rdi
cmp eax, -92285311
cmovns dx, di
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
btc rsi, 225
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add cx, cx
sbb bl, bl
or rcx, rdx
imul bx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test eax, -544019457
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
btc ax, cx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
movzx rax, dil
sbb dl, al
sub sil, -36
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add ebx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
imul esi, edx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 10
or dl, bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
cmp al, al
sub dl, sil
inc edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
and dx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
