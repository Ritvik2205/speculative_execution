.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and cl, -118
sub bl, dl
neg rax
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and dx, -107
and cx, -117
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
cmp rcx, rcx
test dl, -81
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rax, 1827025056
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
add cl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
adc al, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
imul edi, eax
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
cmovbe bx, cx
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
cmovnz rdi, rax
mov al, al
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 10
adc ax, 15251
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
sbb al, 95
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
add eax, esi
xor ecx, eax
bts rbx, rax
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
add bl, cl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
