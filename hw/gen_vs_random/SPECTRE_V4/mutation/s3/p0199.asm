.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -84 # instrumentation
cmovb dx, si
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
bt rcx, 189
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
movsx ebx, cx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
or rdx, 1
cmovbe rsi, rcx
btr si, dx
btr bx, 42
adc bl, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
imul bl
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
mul al
btr rbx, rdi
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmovnz eax, edi
cmovnp eax, edi
movsx cx, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
sub al, 63
sbb ax, 75
imul dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
xor bl, -126
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
xor rcx, -111
dec rbx
cmovp rdx, rax
test dil, -58
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
test cl, cl
adc bl, bl
bts esi, 18
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
