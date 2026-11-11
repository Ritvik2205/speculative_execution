.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rdx, rbx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
test cl, -89
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 77
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 25
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or cx, di
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
imul bx
adc edi, 76
add bx, 110
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
add cl, -21 # instrumentation
adc rbx, 50
imul eax
xor di, -43
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rcx
mov rsi, 28
add bl, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
cmovnle rbx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
and bl, -63
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rsi, 72
cmovz rsi, rax
bts edx, edx
sbb al, -101
xor bl, 93
sbb bl, bl
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
test cl, cl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmp dl, bl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
