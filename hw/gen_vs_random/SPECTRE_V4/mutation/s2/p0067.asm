.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 126 # instrumentation
cmovb esi, ecx
add al, -82
inc rax
sbb dl, 53
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
cmovbe dx, si
neg cl
adc ebx, -5
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
cmp edx, 4
adc ax, 17267
dec di
movsx rsi, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovb rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
sub rcx, -99
adc dl, al
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
test dl, -81
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
bts rbx, rax
and cl, -118
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
