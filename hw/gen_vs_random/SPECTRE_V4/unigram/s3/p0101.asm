.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp eax, eax
or edx, edi
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
adc dl, dil
not esi
neg al
xor ecx, 76
not bx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 56
adc rdi, 63
imul cl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 23
cmp al, 19
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovz esi, ebx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 50
test dl, 19
cmp bl, cl
test ecx, 72
cmovnz edx, ebx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
xor eax, 181978569
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
bswap eax
and dl, 95
add cx, 51
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 10
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
add edx, eax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 45
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmp dil, dl
cmovnb rsi, rbx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 36
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
xchg rdx, rcx
add cl, 94
imul esi, edx
and rsi, 37
or al, al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 34
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
