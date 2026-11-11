.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ebx
sub dx, dx
mov dl, -124
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
sbb al, 102
not cl
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], -49
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
bts eax, eax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
sbb cl, 45
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
or rdi, 43
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
adc rsi, rdi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
adc bl, bl
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
adc rdi, rbx
or al, al
cmovnl bx, cx
add al, -67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
xor dl, dl
cmovnl si, cx
movzx di, cl
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add eax, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
