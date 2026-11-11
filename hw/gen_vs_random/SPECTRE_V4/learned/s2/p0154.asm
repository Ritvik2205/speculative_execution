.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 78
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
test dl, al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 96
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
add bl, -72
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
adc al, cl
add ebx, eax
add dl, -124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
adc ax, ax
xchg dx, ax
cmovns eax, edi
cmovle edx, eax
not di
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmp sil, 88
and bl, dil
or rdi, rax
sub eax, -523763262
bt si, dx
add bl, -72
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bts edi, eax
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 47
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
sub rax, -701741274
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
xor sil, al
movzx ecx, dl
and al, -36
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
