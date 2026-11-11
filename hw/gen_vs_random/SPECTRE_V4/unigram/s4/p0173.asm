.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, di
add dil, dl
xor ax, si
test cl, bl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 95
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and al, cl
xchg eax, edi
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 5
add cl, -37 # instrumentation
adc ecx, 87
cmovnl rcx, rdx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
btc edx, 100
cmovnbe ax, cx
sbb ebx, 34
or cl, dl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sbb rdi, 61
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
xor bx, 87
mov rdx, 85
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ecx, edx
cmovnbe rax, rsi
add bl, bl
add sil, sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 68
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xchg si, cx
sbb ax, -19255
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
cmovl rdi, rcx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
adc bl, dil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 10
and bx, 95
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 94
add ecx, esi
cmovnp eax, eax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
