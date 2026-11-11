.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
adc eax, 1307735127
and cl, cl
add rsi, 44
adc eax, 917540672
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovz rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
sbb rbx, 20
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
bts cx, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
adc sil, cl
cmovle rbx, rax
xor dl, -123
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
xor ax, -29507
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
adc cl, -66
sub al, 63
or eax, -1779536330
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
test cl, 78
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
mul dl
sub edx, esi
cmovs ax, cx
sub eax, -1627558845
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
add eax, 1017938146
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
