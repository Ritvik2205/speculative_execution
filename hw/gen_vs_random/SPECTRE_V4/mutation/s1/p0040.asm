.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 117
or al, al
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
adc cl, dl
imul rcx, rsi, -43
btc edx, ebx
or rdi, rax
btc di, 107
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
movzx si, cl
xor cl, -101
mul si
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
movsx rax, si
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
cmp al, -1
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
or rbx, -108
mov bl, 58
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
adc bl, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
btr ebx, 156
cmovnle dx, si
mov al, cl
cmp dil, 101
movsx ax, bl
cmp dx, cx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
not rbx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
test sil, dl
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
and cl, bl
cmp al, -44
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
bts di, si
neg cl
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
bt ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
