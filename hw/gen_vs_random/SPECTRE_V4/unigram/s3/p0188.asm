.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
xor sil, sil
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 18
add cl, 101 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
or rax, rcx
add bl, 126 # instrumentation
cmovb esi, edi
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 90
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
movzx eax, dl
cmovp edi, edi
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
xor rcx, rsi
cmovnbe rdx, rbx
test eax, 1340292467
cmovnle rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
or cl, 83
mul eax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
or rcx, 55
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
sub rcx, 126
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
adc cl, 31
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
adc cl, sil
cmovnl bx, si
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
or esi, 32
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
cmovz rsi, rax
xchg ecx, ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
test edx, ecx
cmp cx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
