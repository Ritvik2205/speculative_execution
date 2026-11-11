.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and al, -127
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], eax
movzx edi, sil
bt edi, ecx
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
inc bl
cmovns ax, ax
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
cmovz ebx, ebx
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
sbb bl, 57
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and dx, 1
or eax, 2007177863
cmp eax, -92285311
neg rbx
bt edx, ebx
and di, 52
test di, cx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
bts rsi, rbx
or edi, 60
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
cmovo rax, rax
cmp cl, cl
add al, -75 # instrumentation
adc al, 79
sbb sil, cl
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
test sil, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
or bl, bl
dec rbx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
