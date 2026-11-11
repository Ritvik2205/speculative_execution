.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, bl
test bl, -91
cmovno ecx, edx
sbb rcx, rax
cmovnb rbx, rax
or al, -83
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
cmovz ebx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovnb di, bx
or cx, -74
cmovl eax, edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
mul al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmp esi, 123
cmovbe edx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp al, al
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
sub ax, -13057
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
sub rsi, rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
mov esi, 1115061743
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
neg bx
not esi
xor ax, 45
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
mov ebx, 51969593
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
