.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, -19523
add cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
add bx, 51
xor cl, -15
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
btr rbx, 30
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
imul bl
sub dl, al
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
sbb esi, 79
and rbx, 30
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
btc rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 95
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
sbb dil, 42
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 71
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
or rcx, 2
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
cmovo cx, dx
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 23
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
xor al, cl
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
test sil, -119
imul esi
bt rax, 59
cmp bl, al
adc bl, dil
add dl, bl
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
adc rax, rdx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 60
bt ecx, edx
adc dil, -15
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
or dx, 86
cmovs ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
