.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
cmp al, dil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and ebx, -122
cmovs cx, bx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
and dx, -107
cmovno rcx, rsi
adc cl, cl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
cmovs rsi, rdi
cmovnb bx, ax
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
btc rax, rdx
and cx, -117
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 28
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
adc esi, 32
mov ecx, -405458789
and bx, 100
add cl, -106 # instrumentation
cmovno rdx, rax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
mov bx, 27738
test edi, ecx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
imul bx, bx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
xor di, 86
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
cmovnle dx, si
xchg rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
