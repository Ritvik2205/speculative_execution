.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 41
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
xchg bx, si
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
cmovb rsi, rdi
add di, -74
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
add di, -74
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
mul rbx
mul edx
sub bl, dl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
cmovo ebx, eax
movzx ax, al
add bl, bl
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
test bl, al
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 60
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 22
sbb al, -62
cmovp ax, cx
cmovnl rsi, rbx
or cl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovnbe rdi, rax
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
sub ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 13
bt ecx, 2
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
