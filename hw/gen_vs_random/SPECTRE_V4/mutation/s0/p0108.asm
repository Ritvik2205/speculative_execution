.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -16
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
or al, sil
dec rax
neg ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
dec dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
add rax, rax
xchg rdi, rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and ax, -197
xor al, -113
sbb al, -4
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
add bl, cl
cmp rax, 2096656187
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmovbe cx, si
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
add al, bl
cmp edi, edx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add cl, 7 # instrumentation
adc bx, 70
xchg edi, eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
cmovle si, di
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
xor eax, 1185843233
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
xor rax, rsi
cmp dil, 101
adc ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
