.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
cmovnbe rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 65
cmp al, 75
cmovnb bx, cx
btr ax, cx
cmovp rax, rdx
xor sil, cl
dec bl
and sil, -84
bts ax, cx
xor rdx, rax
or edx, -118
or rcx, 61
and dil, dil
movzx dx, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
add al, 40
add al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
btr ax, 109
sub ebx, 19
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
imul si, si
adc dil, sil
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
cmovb cx, bx
bts si, bx
cmovle ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
bts eax, ecx
or di, 29
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
bt rax, 59
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
cmp cl, 107
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
sub ecx, -107
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
movzx ecx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
