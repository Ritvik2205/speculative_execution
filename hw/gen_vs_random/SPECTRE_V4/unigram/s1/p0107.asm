.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, 252
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
bt bx, cx
inc esi
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], bl
xchg ax, di
or dl, al
sub ebx, 27
movzx eax, al
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
mul al
and ebx, -4
and dl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 83
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmp eax, 89
movsx si, cl
cmp dl, bl
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 64
movsx si, al
sbb cl, al
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or sil, 78
cmovns cx, di
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 6
neg sil
xchg dl, sil
bts edx, esi
sub ebx, edx
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
add dl, 122 # instrumentation
cmovz dx, di
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
sub al, 55
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
xchg esi, ecx
sub dx, -12
not dil
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
