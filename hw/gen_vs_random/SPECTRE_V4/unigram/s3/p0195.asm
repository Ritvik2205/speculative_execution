.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb di, dx
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 88
dec dx
btc rbx, rcx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
cmp cl, -80
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
cmovz cx, ax
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
sbb cl, 40
cmovp si, si
cmovnbe rcx, rbx
mov rax, -8100960678429780222
sub al, al
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
cmp rax, -47
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
movzx ebx, al
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
imul rdx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
mul eax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
cmovl rsi, rax
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 28
adc bl, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
xchg esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
xchg rax, rdi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
