.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 34
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
movzx rax, di
cmovz eax, ecx
cmp dl, 63
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add rdx, rax
cmovs si, di
sub ax, 24441
imul rax, rdx
mov al, dl
test rdi, -1876639003
cmovo rsi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
cmovnp esi, esi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xchg edi, ebx
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
sub eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
cmovnz ax, cx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
bts ebx, 22
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add bl, bl
sbb cl, cl
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
or ecx, 97
adc ecx, -12
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
test cl, dil
cmovnp dx, cx
xor esi, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
