.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -2118888343
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
btc rax, 38
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmovnbe rdi, rax
cmovp ecx, ebx
movzx si, sil
cmovns di, ax
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
test sil, dil
xchg ax, dx
xchg ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
xchg cl, dil
add bl, -72
inc ebx
add dil, 72 # instrumentation
cmovle di, ax
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
xchg bl, dil
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
movzx edx, bl
mul dl
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 28
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
cmovns di, ax
cmovnl bx, dx
not cx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
adc dil, sil
mul rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
btr si, dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
cmp dl, 53
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
bt edx, 72
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
