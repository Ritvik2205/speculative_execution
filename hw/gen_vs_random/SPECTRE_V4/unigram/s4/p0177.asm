.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
bts dx, 96
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
test di, si
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
mov ecx, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 60
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
cmovbe rax, rdx
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
add al, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 8
cmovnp rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
sub rdx, rdx
xchg ecx, ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 58
mov eax, 1596316323
cmovz ecx, ebx
movzx si, bl
or rsi, -5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edx
add cl, -58 # instrumentation
cmovnz ebx, eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 62
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmp bl, 12
add cl, al
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
cmovnz rdi, rdi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
inc ebx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
sub rdx, rdx
test rax, rdi
test rax, rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
sbb al, 54
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
xor rax, rdx
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
