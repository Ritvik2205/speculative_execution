.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -595096626
sub sil, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 79
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 69
mov si, 84
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and cx, 17
test esi, edx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 65
imul dx
sub al, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
adc sil, 71
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
btr dx, bx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
imul dx, di
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
inc esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 80
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
sbb eax, 1081973675
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 6
bt ebx, esi
mov rdi, 73
not ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 73
cmovnbe cx, ax
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 43
cmovb edx, ecx
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
cmp al, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 72
add eax, -1796699558
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
