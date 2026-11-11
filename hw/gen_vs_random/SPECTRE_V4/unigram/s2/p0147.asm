.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -55
cmovs dx, ax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
mov ebx, 817819255
add esi, edi
and al, -1
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
cmovl ax, di
cmp dl, 45
movsx rcx, dil
test sil, sil
imul rcx, rsi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovz ebx, edx
and dl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 63
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
sub edx, 73
add cl, dil
imul di, ax
xor bx, -65
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
or esi, 32
dec dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
adc bl, 35
sbb al, 43
and di, -65
sbb si, 3
adc dl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
movzx rsi, sil
sbb si, 83
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
dec rax
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 57
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
xor al, -40
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
