.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rdi
cmp dil, dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
cmovle rcx, rax
sbb al, 32
test bx, -1599
btr dx, di
xor ebx, 40
cmovnb ebx, edi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
bts eax, 209
add cl, -37 # instrumentation
adc ebx, 75
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
or eax, edx
xchg rdx, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
not ax
cmovnp ecx, ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
cmovz rcx, rdx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
test dil, 54
xor bl, cl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, ax
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 33
xor sil, 56
cmovnb cx, cx
imul cl
sub dl, dl
or bl, 3
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], eax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
btc di, si
and dl, cl
dec rdx
or ebx, 4
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
dec bl
mov bl, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 15
movsx ecx, dil
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 85
movzx cx, bl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 93
add rdi, rsi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
movzx cx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
