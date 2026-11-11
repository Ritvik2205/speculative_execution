.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
xor rax, -2072052278
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
add cl, 72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
cmovz rcx, rbx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
dec edi
cbw
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
add bl, -77 # instrumentation
cmovns dx, ax
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
or al, -2
jmp .bb_0.2
.bb_0.2:
add dl, 125 # instrumentation
cmovbe rdi, rdi
setbe dil
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
lea rsi, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
or di, 0b1000000000000000 # instrumentation
bsf cx, di
add dl, 97 # instrumentation
cmovnbe edx, edi
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
sub ax, 7297
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
and ax, 7954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
