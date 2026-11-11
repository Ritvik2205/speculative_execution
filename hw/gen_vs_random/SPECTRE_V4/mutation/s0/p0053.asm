.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmp rcx, rcx
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
xor dl, dl
xor ecx, eax
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 37
cmovbe bx, cx
and dx, -107
add bl, cl
sbb al, 57
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
imul edi, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
adc ax, -22258
add cl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
bts rbx, rax
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
adc al, cl
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
test dl, -125
cmovnz rdi, rax
and cx, -117
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
sub bl, dl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
neg rax
add eax, esi
xor rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
mov al, al
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
and cl, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
