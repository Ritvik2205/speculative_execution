.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
or dl, 56
or si, bx
sub rdi, 17
sbb dil, 45
cmovle rdi, rbx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
adc rax, 1542637830
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
cmovz rax, rbx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
xor al, dil
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and dl, bl
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 31
dec rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
btc ecx, 4
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
sub rax, -701741274
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
xor sil, 56
movzx rbx, ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
test di, 39
sub sil, -36
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
sbb edi, 3
mov bl, 10
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 3
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
test rdx, 79
xor al, 69
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
sbb edx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
