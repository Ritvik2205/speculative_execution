.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
xor dil, dil
or di, 0b1000000000000000 # instrumentation
bsr cx, di
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
sub bl, -98
test rsi, 24
mul cl
mul dil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
add dl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 55
btc cx, bx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
neg cx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
xor dx, ax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 46
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 45
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
inc esi
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 43
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
cmovns dx, ax
btr di, 245
neg dx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
adc al, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add dl, 40 # instrumentation
cmovnp rcx, rdx
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmovle rcx, rax
sub cl, cl
or rdx, 1
sbb bl, bl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
xor edx, 32
sbb al, 43
add al, 27 # instrumentation
mov dl, sil
test al, sil
cmp rsi, 22
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
