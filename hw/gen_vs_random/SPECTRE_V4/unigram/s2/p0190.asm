.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, cl
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
movsx rdi, ax
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movzx rdx, bl
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
add dx, 50
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
cmp dl, sil
btc rdx, rsi
imul rax, rsi, 66
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
adc dx, bx
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
sub eax, -672265139
cmovs esi, edi
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
cmovnp dx, cx
cmovns bx, cx
bts rcx, rdx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
cmovl rdx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
inc cl
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
bswap rdx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 47
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
cmp di, -8
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
dec dl
btc rax, rdx
bts esi, ebx
bt dx, bx
and rcx, 29
adc bl, dil
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
add cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
