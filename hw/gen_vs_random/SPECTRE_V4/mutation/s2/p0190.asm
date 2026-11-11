.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, bl
test bl, -29
cmovno ecx, edx
sbb rcx, rax
cmovnb rbx, rax
or al, -19
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
cmovz ebx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovnb di, bx
or cx, 23
cmovl eax, edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
mul al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmp esi, -84
cmovbe edx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor cl, dl
sbb ax, 1843
imul dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
xor bl, 126
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
xor rcx, 112
dec rbx
cmovp rdx, rax
test dil, 64
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
test cl, cl
adc bl, bl
bts esi, 18
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
