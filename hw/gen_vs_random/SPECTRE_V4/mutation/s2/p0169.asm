.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
cmp bl, dl
add bl, -91 # instrumentation
inc rdi
bswap esi
btr ax, bx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
cmovnz rsi, rcx
mul dl
sub eax, -529389957
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
mov al, dl
test cl, -52
movsx rdx, ax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
mov al, 124
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
or ecx, 17
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
cmp rax, -2096157586
cmovs ax, cx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
bts rsi, 236
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
add eax, 1255256879
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
sub edx, esi
neg sil
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and al, 75
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
mov dx, 11552
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
inc edi
cmovnb rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
