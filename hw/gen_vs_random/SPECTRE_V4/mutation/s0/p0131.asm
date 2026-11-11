.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
movzx rdx, bx
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
adc cl, -86
cmovbe edi, ecx
xchg rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp dil, 53
test sil, bl
cmp ebx, -27
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and al, 5
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
xor esi, esi
adc bl, 127
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
test cl, -52
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
mul dl
sub edx, esi
cmovs ax, cx
sub eax, -529389957
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
cmp rax, -2096157586
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
