.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
bts eax, edx
xor cl, cl
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
add dl, al
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
btc rbx, rax
cmovnbe rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and dil, al
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 32
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and si, 68
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and sil, dl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
or ebx, esi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
