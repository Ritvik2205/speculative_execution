.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
add sil, dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
or bl, dl
sbb bl, 121
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
cmp bl, bl
cmovz ebx, ebx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
xor cl, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
cmovnle rcx, rax
cmovle dx, ax
movzx rdi, bx
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
xchg al, al
mov rax, -4627568876460436527
test rbx, 1219566903
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
bt di, 83
or dil, -104
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
cmovnz ax, di
add cl, 31 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
mov sil, 1
add edi, 38
sub al, dil
and rbx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rbx]
cmp rcx, -121
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 85
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
cmovz ax, di
cmovbe ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
