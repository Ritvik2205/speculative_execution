.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ax, cx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
add eax, 1255256879
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
or dl, dl
inc edi
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
bswap esi
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and al, -118
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
btr ax, bx
cmovnz rsi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
mul dl
test cl, -31
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
mov al, 9
cmp bl, dl
movsx rdx, ax
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
neg sil
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
add bl, -91 # instrumentation
inc rdi
sub edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
or ecx, 102
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
mov dx, 24004
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
bts rsi, 236
sub eax, -672265139
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
cmovnb rdx, rax
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cmp rax, -2096157586
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
mov al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
