.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
mov bl, dil
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
sub dl, bl
test edx, -38580719
or rdi, rdx
bts bx, si
mov dil, al
movsx ecx, cl
and si, -74
test al, 57
and dx, -107
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 57
movzx rsi, di
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
sub sil, 71
test al, bl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
mov al, -71
or al, -47
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 3
add dl, -94 # instrumentation
cmovnle rbx, rdx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
adc eax, 917540672
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
xor cl, -15
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 32
sbb cx, 29
sub bl, 56
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
dec dx
add al, -29
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
neg bx
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
cmp rdi, rdx
btr dx, 209
add dl, 32 # instrumentation
adc rdx, 13
xchg rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
