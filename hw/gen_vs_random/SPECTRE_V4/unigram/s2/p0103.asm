.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
xchg eax, ecx
or ebx, -78
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bt ax, dx
add eax, 1255256879
btr rdx, rax
adc dil, 38
or rsi, rbx
adc dl, 95
test dl, -102
btc edi, ecx
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
mul eax
cmovnz cx, cx
sbb eax, eax
sbb dil, 19
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
or ax, 11396
mov sil, cl
adc dx, 64
sub bl, 56
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
sbb cl, 12
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
sub esi, edi
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
or edx, 0
imul dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 83
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
cmp dil, dl
add dil, bl
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
test dil, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
