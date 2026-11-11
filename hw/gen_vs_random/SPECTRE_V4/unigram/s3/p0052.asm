.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 80
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
sub rsi, -104
test cx, 19367
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
sub di, dx
sub di, 9
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 67
add al, 121 # instrumentation
movsx edx, ax
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
cmovbe rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
mul bl
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
cmovl dx, ax
xchg al, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
cmovno bx, dx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdx
cmovns di, bx
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
imul dx
not bx
sub dil, -11
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
or edi, -78
and ax, si
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
mul si
add esi, 52
and eax, edi
add rcx, rcx
btr rax, 187
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
