.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
mul esi
cmovnp rdi, rax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
add dl, -94 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
xchg al, al
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
cmovs esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
xor ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmp dl, dl
xor cl, -54
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
add bl, -109 # instrumentation
sbb esi, 19
test edx, 573099753
xchg dl, bl
dec esi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
sbb cl, 19
adc rbx, rdx
cmp bl, 13
or dl, sil
mul esi
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmovnz bx, si
test esi, 87
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, -102
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
add edx, 95
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
or dl, 56
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 21
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
cmovnp rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
