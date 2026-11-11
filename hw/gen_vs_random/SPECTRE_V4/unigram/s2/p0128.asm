.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
btc ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
bt ecx, 177
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
add dl, -91 # instrumentation
cmovl rdi, rsi
test cl, -31
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
or cx, cx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
neg rsi
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
adc edi, -83
imul rcx, rdi, 83
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
sbb esi, 6
xor rdx, rax
or ebx, -78
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
cmp bl, sil
xor bx, 59
movsx ecx, cx
mov al, 90
test bl, 87
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
imul rsi, rbx
sub ecx, -107
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
neg bl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add dl, 70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
xchg esi, edx
cmovz rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
add bl, dl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
