.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
bt rcx, rbx
xor cl, al
mov al, al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and al, 49
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
mul rdi
test rcx, rdi
adc sil, -112
movsx ebx, bl
and rax, -779592432
cmovnp rdi, rdx
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and ax, -4731
and dl, 124
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
imul dx, cx
and dl, dl
inc ebx
adc rsi, rdi
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
not cl
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
adc bl, bl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
or rdi, -41
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
adc rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
