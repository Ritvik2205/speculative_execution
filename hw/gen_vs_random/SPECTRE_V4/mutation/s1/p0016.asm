.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, 81
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
sbb cl, 40
or rdi, 43
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, -67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
xor dl, dl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
or al, al
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
inc ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
adc rsi, rdi
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
sbb al, 95
bts eax, eax
adc rdi, rbx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
add eax, -2075159577
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
sub dx, dx
cmovnl bx, cx
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
movzx di, cl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
not cl
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cmovnl si, cx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
