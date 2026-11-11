.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, al
sbb sil, sil
imul di, cx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
or al, -50
cmp al, -116
xor bx, 106
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
dec di
sub al, cl
cmovle rsi, rax
add bl, 71 # instrumentation
cmovnle rax, rbx
add al, -55
movzx rdx, si
cmp dx, 58
xor dl, -123
add al, -99
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
add al, -1
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
cmovnle rdi, rbx
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
mul cl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
cmp dil, -29
cmp sil, dl
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
add cl, -23 # instrumentation
cmovno edi, esi
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
sub dl, al
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
add bl, 69 # instrumentation
cmovnbe cx, si
adc ecx, 114
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
xor sil, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
