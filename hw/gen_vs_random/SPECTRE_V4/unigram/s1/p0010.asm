.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
xor al, 23
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 72
mov al, 119
mov al, al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and bl, -30
dec bx
test dl, 114
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 20
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
bts ax, 155
mov al, dl
bts eax, esi
xor rbx, rax
cmp rdx, -49
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
and ecx, 71
add rcx, rax
cmp al, al
or rbx, -108
bts edx, 116
or dl, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
neg dx
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and dx, bx
add al, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
or al, al
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
xor bl, 27
cmovbe rax, rdx
cmovz ecx, ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
