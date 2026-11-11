.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, -29
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
bt ebx, ecx
btc edx, ebx
movzx si, cl
neg cl
and cl, bl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
mul si
btr ebx, 156
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
adc bl, al
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
movsx rax, si
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
bts di, si
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
cmp al, 115
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
btc di, 107
mov bl, 106
test sil, dl
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
movsx ax, bl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
adc cl, dl
xor dil, 37
or rdi, rax
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
or rbx, 69
mov al, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
not rbx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
cmovnle dx, si
cmp al, 115
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
imul rcx, rsi, -43
cmp dx, cx
or al, al
xor cl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
