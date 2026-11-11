.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
xor ecx, eax
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
mov al, al
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
adc ax, -22258
neg rax
sbb al, -14
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and dx, -107
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
xor dl, dl
imul edi, eax
cmovnz rdi, rax
add eax, esi
cmp rcx, rcx
and rax, 37
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add cl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
cmovbe bx, cx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
adc al, cl
bts rbx, rax
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
add bl, cl
xor rax, rsi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
test dl, -102
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
and cl, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
