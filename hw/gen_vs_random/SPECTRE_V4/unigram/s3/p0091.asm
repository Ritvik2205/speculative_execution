.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
test dl, 19
test dl, 19
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
cmovz ecx, esi
and sil, -49
test al, al
cmovo eax, edx
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
sub cl, 116
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
add bl, -18 # instrumentation
mov rsi, rbx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
cmovb edx, esi
add cl, -42 # instrumentation
adc al, dil
sbb al, 32
xor cl, -54
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], dx
or dl, 56
imul cl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 33
not rdx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
cmovnp rcx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
sbb ebx, 99
and al, -127
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
add ax, -13169
mov bx, -31043
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
xor rdi, 29
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
and dl, 15
cmovz ebx, ebx
xchg dx, di
movzx rbx, si
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
