.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rax, rbx
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bl, 126
dec cl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
inc cx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
movsx bx, dil
cmovnp bx, dx
test si, 12
sbb dx, dx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sbb cx, cx
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and cl, 126
cmovnb bx, dx
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
xor di, 71
mov cl, al
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
add cl, al
cmp rcx, -121
and dl, dl
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
inc al
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
or cl, 66
imul rcx, rax, 53
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
mov cl, cl
adc di, -78
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
btc rdx, 178
imul rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
xor bl, 126
mul sil
and sil, sil
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
xchg ax, ax
mul dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
