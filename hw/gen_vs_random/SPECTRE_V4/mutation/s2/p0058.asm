.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, 1050143384
xor bl, cl
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
xor rax, -98
sbb al, -4
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
adc rcx, rax
movzx esi, cx
or bl, bl
add edi, eax
add rax, rcx
movsx edx, bx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmp bl, al
bt esi, edx
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
test sil, 68
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
or rdi, 43
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
