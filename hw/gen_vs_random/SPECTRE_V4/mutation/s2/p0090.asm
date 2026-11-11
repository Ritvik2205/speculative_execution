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
and ax, 4
xor al, -31
sbb al, 31
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
add bl, cl
cmp rax, 1097504565
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
add cl, -106 # instrumentation
cmovno rbx, rax
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
or dil, -104
and cl, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and dl, dl
sub esi, -69
and ax, 62
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
xor dl, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
mov ebx, esi
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
