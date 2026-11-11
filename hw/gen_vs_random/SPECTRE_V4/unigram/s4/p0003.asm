.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
neg edx
sub al, 98
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 20
sub dil, dil
add al, 122 # instrumentation
cmovns edx, eax
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
add ecx, 62
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
test dl, bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sbb bl, 57
bt ebx, esi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
adc ebx, 117
mov ax, 95
mov rcx, 5862286138240743445
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 15
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
bt edx, 67
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 96
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
or dx, cx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
movsx rbx, dl
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
mov al, al
add al, al
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
cmp dil, dl
add ebx, ecx
and dil, 96
sbb cx, 66
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
