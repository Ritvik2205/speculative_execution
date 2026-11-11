.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
or dl, 88
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
not rbx
cmovns di, bx
movzx ebx, al
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
mov rdx, rax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
not cx
sub al, 99
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
bts esi, 241
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 19
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
sbb al, dl
imul rbx
neg dl
and dil, cl
sub al, al
imul rdi, rbx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
cmovnp rsi, rdx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 47
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and sil, cl
sbb dl, cl
cmp sil, 88
xchg ecx, edi
movzx esi, si
movzx edx, sil
cmovnb ebx, edi
movzx edx, al
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xchg rdi, rcx
and rbx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rbx]
adc bl, 89
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
sbb ebx, edx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
cmovp edx, edx
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
add eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
