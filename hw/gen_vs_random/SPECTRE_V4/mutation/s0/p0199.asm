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
sub dword ptr [r14 + rbx], -122
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
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and dil, cl
or rdi, rdx
test dil, -83
sub rax, 120
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor ebx, ecx
cmp rsi, 74
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
xchg di, bx
imul al
xor ax, 13332
add ecx, 99
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sub rdx, rsi
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
or dl, 71
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
