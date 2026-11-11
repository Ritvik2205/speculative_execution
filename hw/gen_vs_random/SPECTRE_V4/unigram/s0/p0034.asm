.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rax, rbx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
xor al, al
btc rdx, rdi
sub dil, 35
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
xchg eax, ecx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test dl, -102
or bl, 80
cmovnb ax, bx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 42
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
add bl, -74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
xor dl, cl
cmp bl, dil
neg cl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
cmp dil, 101
test dl, -81
imul bx, si
bts eax, 52
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
btr ax, ax
neg bl
movzx rdi, cx
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], 55
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
btr esi, esi
or bl, 111
cmovnle dx, si
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovno rdx, rsi
mov eax, edi
cmovnp dx, si
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
cmovnbe eax, esi
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edx
cmovo edx, edi
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
add dil, al
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
sbb al, bl
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
