.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, -111
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
imul cx
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
neg sil
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
cmovo di, cx
cmovno ecx, edx
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor dx, -43
test bl, cl
cmp dil, 101
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
sbb dil, 31
cmovb rdi, rdi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 95
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
dec al
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
or dl, al
cmp cx, 0
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 12
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
cmovz edi, edx
sbb rax, rbx
or dil, 5
and sil, -84
xchg eax, edx
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
add bl, sil
xchg cx, bx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
test edx, 1479885278
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
cmovb dx, si
sub sil, al
imul cx, si
add rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
