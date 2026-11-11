.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, rax
and cl, bl
cmp al, 98
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
adc cl, dl
adc bl, al
mov al, cl
movsx ax, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
neg cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
btr ebx, 156
mul si
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
movzx si, cl
mov bl, 58
imul rcx, rsi, -43
xor cl, -101
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
btc di, 107
cmp dx, cx
movsx rax, si
or al, al
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
test sil, dl
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
cmovnle dx, si
cmp dil, -29
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
bt ebx, ecx
cmp al, 114
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
bts di, si
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
btc edx, ebx
xor dil, 37
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
or rbx, -107
not rbx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
