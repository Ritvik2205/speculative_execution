.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
sbb edx, 32
or bl, dil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
cmovnbe esi, ecx
add ebx, 3
adc al, bl
cmovb ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 35
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
add cl, 15
imul rdi
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
add dil, dil
xor bl, 93
cmp dil, -124
xor bx, ax
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdi
test al, 66
and bl, -63
or dil, sil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
or ebx, eax
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
sbb dil, 20
and rax, 93
not rdi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 56
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
bt edx, 80
movzx rbx, ax
xor bl, 93
and dx, 1
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
xor si, bx
add bl, bl
cmovnbe dx, bx
sbb rax, 183833426
dec rdx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 98
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
btc rsi, rax
cmovs rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
