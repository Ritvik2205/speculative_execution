.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 75
cmovbe dx, bx
inc rsi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
cmp sil, -100
xor edx, 92
add bl, cl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmp dl, bl
add al, 42 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
neg rdi
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
xor eax, -1772786275
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 28
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
neg edx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 6
cmp eax, 89
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
adc al, -86
neg rax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
xor cx, -80
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
add cl, -69 # instrumentation
adc al, al
sub bx, 24
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
cmp eax, esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 69
cmovnb ax, ax
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
mov edi, 412386591
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
