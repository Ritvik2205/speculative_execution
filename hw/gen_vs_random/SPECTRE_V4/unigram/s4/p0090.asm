.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 67
inc esi
cmovb ebx, ebx
sub cl, -74
adc al, dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 54
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
add cl, 122 # instrumentation
cmovz rbx, rcx
add eax, ebx
cmp cl, al
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 84
sub dil, bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
xor dl, 67
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 61
xor al, dl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 28
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
and ax, 35
btc bx, cx
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
or ecx, ebx
add bl, -18 # instrumentation
mov rax, rdx
cmp al, -52
movzx dx, dil
sub al, 119
or eax, edi
and eax, -24
or edx, -127
adc cl, bl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 73
add si, 4
mov sil, sil
or edi, 40
xor sil, dil
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
