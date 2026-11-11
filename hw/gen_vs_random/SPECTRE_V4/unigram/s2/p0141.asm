.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
xchg cl, cl
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and al, 92
cmovnp ax, cx
adc eax, -1127383570
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
cmovbe dx, si
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and sil, sil
and al, al
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
inc edx
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
cmp al, -122
mov edx, -950755477
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 72
mov al, dil
or dil, dil
test cx, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
sub bx, 24
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 23
and si, -74
imul edx, ebx
or rbx, rbx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
sub cl, -32
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
mul dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 77
add al, bl
cmovbe rbx, rdx
sbb cl, 12
movzx eax, ax
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
