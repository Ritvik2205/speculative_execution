.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 2115020203
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
imul ax, cx
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
imul cl
mul dl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovz si, si
and si, dx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
add esi, -5
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 87
sub esi, edx
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
cmp ax, -15409
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 46
cmovnz edi, esi
adc al, bl
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
imul dx
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
xchg edx, esi
test bl, 24
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add sil, 56 # instrumentation
cmovle rbx, rsi
cmovp rdi, rbx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 6
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rdx, rsi
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
or ebx, esi
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
