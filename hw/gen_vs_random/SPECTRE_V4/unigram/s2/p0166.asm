.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 81
adc bl, sil
cmovl rbx, rax
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 42
mov rbx, 9101099553822202722
add sil, bl
imul rsi
and al, sil
bts rsi, rdx
adc al, al
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and sil, -49
cmp al, dil
add cl, -21 # instrumentation
adc rbx, 55
add cl, 106 # instrumentation
cmovnp rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 91
adc ebx, 117
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 27
test cl, cl
xchg esi, ebx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
test al, al
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovz rbx, rsi
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
cmovnle bx, bx
mov rbx, 9101099553822202722
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
