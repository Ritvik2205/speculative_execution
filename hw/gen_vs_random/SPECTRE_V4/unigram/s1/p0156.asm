.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 37
cmovbe ax, cx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
xor al, dl
inc ax
adc sil, -63
sub dx, ax
add al, 121 # instrumentation
movsx edx, bx
mov dl, bl
and dx, -107
movzx ax, al
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
cmovp eax, ecx
imul dl
cmovnz rbx, rdx
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or rdi, rbx
cmp dl, 45
xor bl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 48
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
adc sil, bl
xchg dx, bx
add cl, -122 # instrumentation
cmovp si, si
imul eax, eax, 32
xchg rdx, rsi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 89
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
cmp bl, -79
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
add cl, 101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 91
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
imul rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
sub rax, rcx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ecx
test rcx, rdi
adc rsi, 82
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
sub dil, dl
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
bswap rdi
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
