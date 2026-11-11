.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
btc di, 83
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
xor dil, -23
test sil, dl
movzx si, cl
or al, al
or rbx, 69
mul si
cmp al, -106
and cl, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
cmp al, -116
bt ebx, ecx
movsx rax, si
imul rcx, rsi, -43
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
btc edx, ebx
movsx ax, bl
or rdi, rax
neg cl
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
adc bl, al
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
adc cl, dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
not rbx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
cmovnle dx, si
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor cl, -15
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
mov al, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
mov bl, 106
btr ebx, 87
bts di, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmp dx, cx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
cmp dil, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
