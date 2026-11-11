.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
imul dl
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 99
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
btc eax, 62
or bl, 61
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
add dl, -12 # instrumentation
cmovp esi, ecx
and dl, 126
cmovbe dx, di
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdi
sub edx, 73
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 30
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
movzx edi, bx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rsi
xor ax, dx
inc si
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 29
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
cmovbe ebx, eax
bts edi, edi
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
cmovnp edx, esi
xchg cl, sil
adc eax, -60
imul bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and esi, 126
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
or al, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
xchg rbx, rdx
test bx, 24072
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
btc rdx, rsi
sub esi, -69
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
dec rdi
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
