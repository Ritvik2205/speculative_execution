.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 71 # instrumentation
adc cx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
cmp sil, 113
inc ecx
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
test rax, -269735774
sub dx, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
xchg rdi, rax
xchg al, al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
add sil, sil
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
sbb cx, cx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
btr rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
test cl, -31
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
mul dl
sub edx, esi
cmovs ax, cx
sub eax, -1804712207
btr ax, bx
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
inc edi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
add bl, -91 # instrumentation
inc rdi
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
cmovnb rdx, rax
cmp rax, 1682181214
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
add eax, -1628652110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
