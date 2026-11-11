.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
xchg rbx, rdi
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 32
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
add dil, cl
add rax, rbx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
movsx rbx, dx
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
adc dx, 9
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
xor bl, sil
sbb al, -39
cmp rcx, rcx
btc ax, si
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and cl, -128
sub rax, 1294268026
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 22
or ax, 48
movsx dx, dil
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
test rcx, 54
sub bl, 56
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 10
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
neg di
add bl, -24 # instrumentation
cmovnbe dx, dx
bt ecx, 135
sub si, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
xor bl, 126
cmp bx, 113
movzx rsi, dx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 84
sub cl, 92
cmovbe rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
sub rbx, 101
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
neg dil
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
