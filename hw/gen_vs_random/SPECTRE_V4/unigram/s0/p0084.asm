.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdi
and rax, 37
add al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
add sil, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
sbb bl, -98
cmp bl, -79
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
inc edx
sub bx, 24
and sil, al
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
sub sil, cl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
movzx rbx, di
test bx, 24072
adc cl, cl
cmovz edi, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
or dil, dil
and al, cl
sub si, -92
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
xchg dx, dx
sub cl, -73
cmp dil, bl
imul sil
test dil, dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
test sil, -119
or cx, cx
btc rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 100
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
cmp cx, 0
cmp sil, al
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 11
movzx esi, dil
add al, 121 # instrumentation
movsx eax, dx
imul rax, rbx
or al, sil
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
