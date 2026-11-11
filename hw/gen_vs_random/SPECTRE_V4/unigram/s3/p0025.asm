.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and bl, dl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
cmovbe ebx, esi
cmovnp rcx, rsi
cmp al, cl
or dil, -104
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
sbb cl, al
cmovno rdi, rax
sub cx, -114
add cl, -62
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
sub edx, -122
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
add rax, rdi
test bl, -91
movzx dx, cl
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmovno ebx, eax
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or si, -84
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
btc rcx, 27
imul bl
movsx ecx, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
cmovnb rax, rbx
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
imul esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
and rax, 86
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
btc edi, 125
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
mul cl
xchg dl, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
