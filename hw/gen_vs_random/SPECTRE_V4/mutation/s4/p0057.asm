.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ax, cx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
bts rsi, 236
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
add bl, -91 # instrumentation
inc rdi
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
sub eax, 490935921
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
movsx rdx, ax
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
cmp rax, -47
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
mov al, 125
bswap esi
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
or ecx, 102
sub edx, esi
and al, 5
btr ax, bx
neg sil
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
cmovnb rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
mov dx, 11552
inc edi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
or dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
mov al, dl
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
cmovnz rsi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
mul dl
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
add eax, 1017938146
test cl, -31
cmp bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
