.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, 4
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
xor cl, sil
btc si, 33
test ebx, -595096626
cmovnp rsi, rcx
mul esi
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
cmovo rsi, rdx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 70
adc si, 36
add cl, 99
btc dx, bx
imul bx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 44
xor bl, 93
sbb dil, 89
imul rdi
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rcx, -102
xchg rax, rdx
sbb bl, dil
add al, al
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 24
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sub dx, cx
mov cl, 91
and bl, -63
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 25
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 100
add cl, -82 # instrumentation
sbb ax, si
xchg rdx, rcx
and edx, 99
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
cmovnp si, cx
imul rdi, rbx, 83
test eax, edx
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
btc si, 85
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
bts ecx, 70
or ax, si
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 28
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
