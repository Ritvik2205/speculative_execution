.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
bts rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
xor rax, rsi
add cl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
add eax, esi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rax, -779592432
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
adc ax, 15251
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and cx, -117
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
test dl, -125
xor ecx, eax
cmp rcx, rcx
sbb al, -4
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
cmovnz rdi, rax
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and dx, -107
mov al, al
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
adc al, cl
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
neg rax
cmovbe bx, cx
imul edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
add bl, cl
and cl, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
