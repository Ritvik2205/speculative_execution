.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
xor si, bx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 80
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
add dl, 72 # instrumentation
cmovle dx, di
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovs cx, cx
or dil, al
inc rdi
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
test bl, bl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 80
or bx, ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
imul bx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 79
sbb esi, 22
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
cmovo rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
imul dl
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovs ebx, edi
or al, 96
add bl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
adc cl, dil
bt esi, 227
mov esi, 16
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
imul rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
xor bl, dil
imul ax, si
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
