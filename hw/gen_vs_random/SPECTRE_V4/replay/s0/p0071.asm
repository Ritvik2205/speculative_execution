.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
or ecx, 102
mov al, dl
bswap esi
movsx rdx, ax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
bts rsi, 236
cmovnz rsi, rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
mov dx, 11552
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
and al, 100
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
mov al, 82
neg sil
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
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
sub eax, -638345541
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
cmp rax, 40
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
add eax, 953442933
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
