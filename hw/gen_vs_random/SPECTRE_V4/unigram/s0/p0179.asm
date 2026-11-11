.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 19
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
cmovz bx, bx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 66
test edx, 573099753
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
cmp rax, -1102558854
bts cx, 90
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
xor al, 102
cmovo rdx, rcx
add cl, cl
not rdi
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
imul bx
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
cmovnz si, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
imul di, bx
test bx, -1599
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
cmovb dx, dx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 17
bts ebx, 22
not bx
sbb cl, -104
bts edi, esi
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
adc dil, dl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 85
not di
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 43
test eax, -558243208
dec al
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
or al, sil
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
