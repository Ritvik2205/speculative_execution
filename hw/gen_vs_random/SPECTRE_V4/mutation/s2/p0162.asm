.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
imul rdx, rbx, -19
bts ecx, ebx
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
bswap rcx
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
movzx edi, si
dec al
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
add edx, 89
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
add dl, 122 # instrumentation
cmovz dx, bx
bt rbx, rax
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
inc cl
bt si, 114
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, -1066968986
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, -15
test dl, cl
mov bl, -69
adc bl, cl
cmp ebx, -19
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, -3570960
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, -1881584175
cmovnz eax, eax
sbb al, 54
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov cl, dl
adc al, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
