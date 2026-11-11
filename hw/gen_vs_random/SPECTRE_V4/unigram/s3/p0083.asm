.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdi
dec rax
add cl, 101 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
add al, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
inc esi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
add cl, -62
xor sil, 8
cmovb edi, eax
adc dl, 53
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
cmovnz rcx, rbx
cmovb dx, cx
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
cmovl edi, eax
cmovno rax, rcx
mul dx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
adc sil, sil
cmovl ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
cmovp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
add al, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 30
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
cmovnb ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 44
xor rdx, 106
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
sub bx, 24
cmovnbe rbx, rdx
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
add dl, dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
adc al, -59
mov al, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
xchg rax, rax
cmovnle rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
