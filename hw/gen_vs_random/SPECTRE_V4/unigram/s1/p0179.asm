.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, di
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
cmovnp rax, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
sbb di, -76
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
not dl
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
xchg rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
or al, dil
bswap ebx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
adc bl, bl
cmovnbe rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sbb sil, dl
cmp dx, 47
cmp dil, sil
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 21
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
xor sil, sil
test bx, -1599
sbb bl, 57
add si, 4
movsx ebx, sil
add cl, -117 # instrumentation
cmovs rdx, rcx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and bx, 95
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
mov si, 69
sub cl, -74
xchg eax, edi
btr rdi, rbx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
add bl, -109 # instrumentation
sbb ecx, 21
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
or dl, cl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
imul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
