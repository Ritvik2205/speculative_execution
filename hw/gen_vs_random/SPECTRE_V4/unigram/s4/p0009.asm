.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, 35
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
xchg al, sil
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 41
dec rax
or bl, 61
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
cmp dil, al
xor cx, ax
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
imul edi, eax
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
movsx ecx, dl
btr ax, cx
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovl di, cx
imul cx, ax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], di
cmp dil, 101
test cl, sil
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
imul eax
sub al, 63
add cl, -9
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
cmovbe ecx, edi
bt rdx, rdx
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
xchg si, bx
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
sub di, bx
xchg edi, esi
cmp al, -122
mov sil, 10
movsx cx, sil
test al, 57
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
sub al, cl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 4
add cl, 54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
