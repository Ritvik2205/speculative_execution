.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, ax
add bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
cmovnbe rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
add cl, -82 # instrumentation
sbb ax, dx
add al, 5
or al, 95
and al, dil
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmp rbx, 12
adc bl, 89
sbb dil, al
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
adc edi, 97
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
add cl, bl
inc sil
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovnb ax, ax
sub eax, 2030845821
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
cmovz edx, edx
dec edi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 84
add rbx, rcx
cmovs di, dx
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
test dil, 81
add bl, -109 # instrumentation
sbb edi, 46
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
mov rdi, 26
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
cmovs dx, dx
test ax, 23760
add bl, 38 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and cl, 58
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 42
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
or bx, si
btc dx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
