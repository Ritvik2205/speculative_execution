.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
sbb dl, -71
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
mul al
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
adc cl, dil
cmovno ebx, edi
sub edx, edi
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
sbb di, -105
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
add dl, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
adc dx, di
or bl, 80
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
cmovno eax, ecx
or dx, 56
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 46
mov rcx, 4
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add cl, -58 # instrumentation
cmovnz ebx, eax
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
cmp cl, 107
xchg cx, si
test dil, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
and ax, si
movzx esi, dil
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
add bl, bl
add esi, ebx
bt rbx, 50
test rcx, 13
xchg cl, cl
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
adc rdx, rcx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
adc rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
