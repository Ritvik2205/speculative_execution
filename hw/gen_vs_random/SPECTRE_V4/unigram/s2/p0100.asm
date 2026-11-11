.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovl ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 62
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
add bl, -38
mov sil, dl
and ebx, ebx
cmp ebx, 80
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
add dl, cl
imul cx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 35
xchg rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
add cl, -62
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
movzx ecx, dl
or cl, dil
sub ax, dx
inc rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
xor dx, -43
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rcx
sub al, 59
and al, 100
add bl, 7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
sub ecx, -107
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 33
sub cl, 92
sub dl, dil
sbb rsi, rcx
neg bx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
adc dil, 38
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 62
add dil, -84
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
btr si, di
btr ax, 109
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
add sil, 47 # instrumentation
cmovnle di, si
add bl, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
mov esi, 1695134926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
