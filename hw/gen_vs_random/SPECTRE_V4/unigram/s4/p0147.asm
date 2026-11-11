.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 37
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
movsx rbx, dx
and dil, dl
sbb al, al
xor cl, sil
btr ax, di
cmovnbe rax, rdx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 63
or ax, dx
imul cl
imul edi, eax, 42
add cl, dil
cmovnb cx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
sub ax, 24441
add di, -74
cmovnl rdx, rax
cmp cx, 58
movzx rbx, di
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
cmovnp ax, di
and dil, dl
not si
cmovs edi, edx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 18
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
xor cl, -54
bt dx, 57
imul dl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
cmovp ecx, ecx
or ax, -12775
adc dx, 21
add cl, 106 # instrumentation
cmovnp rdi, rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
add cl, 106 # instrumentation
cmovnp rbx, rdi
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
imul rdi, rdx
inc edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
