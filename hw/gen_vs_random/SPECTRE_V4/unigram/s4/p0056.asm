.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ax, dx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 46
or esi, 32
cmovnp rdi, rsi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test dl, cl
test al, -24
neg esi
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
add sil, 87 # instrumentation
cmovz ebx, esi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
bts rdx, rdi
or dl, -26
and sil, -84
test dl, -102
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
add cl, 111 # instrumentation
cmovnle ax, cx
mov dil, 60
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
not rax
xor si, -73
imul rcx
sbb edi, 107
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 66
sub cl, bl
cmovl eax, esi
dec al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
cmovz ecx, edx
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
sbb bx, 87
btr rdx, 49
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
xor edi, 127
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
mov bl, sil
and di, -34
test sil, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
