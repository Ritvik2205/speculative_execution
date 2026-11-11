.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 1947430392
and dl, al
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovs si, ax
sbb rdx, -43
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
cmovs esi, ebx
cmovnbe ebx, eax
mul dil
xor rax, -98
cmovnz ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
adc edx, edi
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
or ebx, -78
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
cmovnle bx, ax
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
mul al
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
add rdi, 111
inc ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmovp cx, dx
cmovnle rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
xchg rdi, rax
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
imul dx, di
test edx, eax
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
neg cx
sbb sil, -124
mul bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
and dil, -120
test rdi, rdi
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
