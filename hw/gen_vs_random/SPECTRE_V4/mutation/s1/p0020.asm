.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
xor cl, 88
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
xor al, -113
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
cmovb di, cx
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cmovp rdx, rcx
imul ax
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
cmovle esi, eax
sbb eax, 316213929
sub cl, 18
movzx edx, di
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
bts bx, 102
add dl, -91 # instrumentation
cmovl rbx, rcx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
add cl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and dx, -107
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
add bl, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
test dl, -125
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 10
bts rbx, rax
and cl, 32
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rax, 37
xor ecx, eax
sbb al, -4
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
adc al, cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
