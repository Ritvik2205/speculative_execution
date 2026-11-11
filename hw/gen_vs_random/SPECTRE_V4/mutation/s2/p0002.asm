.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
bts rsi, 236
mov dx, 11552
inc edi
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
add bl, -91 # instrumentation
inc rdi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
sub edx, esi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
add eax, -105
neg sil
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
cmp bl, dl
cmovnz rsi, rcx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
cmp rax, -2096157586
movsx rdx, ax
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
bswap esi
btr ax, bx
mov al, -71
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
cmovs ax, cx
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and al, -12
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
cmovnb rdx, rax
or dl, dl
sub eax, 490935921
mul dl
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
mov al, dl
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
or ecx, 102
test cl, -10
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
