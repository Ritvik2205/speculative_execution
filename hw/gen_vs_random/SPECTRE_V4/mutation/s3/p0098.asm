.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
cmp dx, cx
and cl, bl
not rbx
adc cl, dl
xor cl, 13
movsx rax, si
neg cl
mov al, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
btr ebx, 156
adc bl, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
btc di, 83
or rbx, 69
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
mov bl, 58
cmp al, -78
cmovnle dx, si
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, 714283065
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, 13
test dl, cl
mov bl, 29
adc bl, cl
cmp ebx, -27
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, -3570960
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, 1294268026
cmovnz eax, eax
sbb al, -39
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov cl, dl
adc al, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
