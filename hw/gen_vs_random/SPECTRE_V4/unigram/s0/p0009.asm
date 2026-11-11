.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -109 # instrumentation
sbb esi, 84
xor si, di
cmovb edx, edi
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
sub al, 50
movsx rax, bx
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
imul dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
mov rax, -8696242625349627833
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
btc rdi, 167
imul cl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
cmp rax, -1102558854
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add cl, 122 # instrumentation
cmovz rdi, rax
cmovle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
adc sil, 19
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 53
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 32
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 40
sub ebx, ecx
cmovnp bx, dx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
sbb cl, 20
sub al, 99
add cl, -26 # instrumentation
btr ecx, 48
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 30
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
adc dl, al
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 25
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
