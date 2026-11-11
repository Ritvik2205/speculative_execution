.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
btc edx, 165
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
movzx rax, di
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp cl, dl
dec cl
cmp rdi, 28
or cl, cl
bt si, 18
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
mov ebx, ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, 105 # instrumentation
cmovl esi, ecx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
add bl, 42 # instrumentation
movsx rdx, bl
cmovnp ax, dx
mov edi, -1866088512
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
inc rax
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
test cl, -10
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
mul dl
sub edx, esi
cmovs ax, cx
sub eax, -90064733
btr ax, bx
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
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
add eax, -1628652110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
