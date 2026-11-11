.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
mov bl, 29
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 44
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
cmovno ebx, edi
add al, 66 # instrumentation
cmovp ebx, ebx
bt eax, 103
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
cmovnbe esi, ebx
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
or al, al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 18
test sil, al
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ebx
and sil, -84
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 8
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
cmovnz ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
adc edi, -83
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
or dil, al
or rcx, 22
add rbx, 79
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
btc rsi, rax
inc cl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
adc bl, 35
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
cmovs cx, di
bts cx, 135
xor bl, cl
or dx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
