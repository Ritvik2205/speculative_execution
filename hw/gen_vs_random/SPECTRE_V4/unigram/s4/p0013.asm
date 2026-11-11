.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
cmovnl rbx, rcx
cmovnp di, di
cmovz ebx, esi
cmp cl, dil
cmovz rbx, rcx
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
adc si, si
sub bx, si
adc sil, 78
xchg si, di
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
not dil
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
test dl, 19
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
bts si, 30
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 38
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
adc bl, al
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 21
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
cmovb ax, ax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
add al, al
add sil, bl
or sil, bl
cmovnbe ax, bx
cmovnbe rax, rbx
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
cmovnb dx, dx
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
test bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
bts ebx, 22
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
