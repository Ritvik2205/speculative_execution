.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
and bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
or edi, eax
cmovz rcx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
sbb ecx, 52
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dil
sub edi, 54
imul edx, esi, 24
add cl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
cmovnl si, cx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
sub sil, sil
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
dec al
dec al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
xor rdx, 106
sbb dil, 70
and al, cl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
imul esi, edx, 1
movzx dx, bl
add dl, -91 # instrumentation
cmovl rsi, rbx
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
add ecx, edi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 78
add dl, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
and eax, edx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 100
mov eax, 1596316323
or rax, rsi
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
cmovnb edi, edx
xchg rax, rdx
sbb esi, edx
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
mov ecx, edi
sbb ebx, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
