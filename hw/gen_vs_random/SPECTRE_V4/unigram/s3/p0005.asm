.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -6 # instrumentation
cmovo rdx, rbx
movzx ax, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test cl, sil
imul edx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 73
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
mov ebx, 817819255
xor rax, 93
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
cmp sil, 127
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
or al, 27
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
sub cx, dx
movsx di, dil
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
inc esi
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmp dl, cl
cmovl di, di
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
bt ecx, edx
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rax]
xor edi, 127
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
mov bl, 106
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 93
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 37
add rdi, rcx
btc edi, esi
inc edx
sub rdi, 105
sub ebx, 61
btr rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
