.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 34
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 59
add dl, -12 # instrumentation
cmovp ebx, ecx
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add al, 111 # instrumentation
cmovno eax, edx
movsx ax, sil
sbb rdi, 78
cmovnbe rax, rsi
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
test cl, sil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], esi
movzx ax, dil
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
inc eax
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
test ecx, -907816607
and rdi, 0b1111111111111 # instrumentation
test rdi, rbx
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
and di, -34
add bl, -18 # instrumentation
cmovs cx, dx
cmovbe si, si
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
sbb bl, sil
and sil, dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
