.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
lea rsi, qword ptr [rsi + rax + 80]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
bt edx, eax
lea ax, qword ptr [rsi]
cmovno ax, ax
jmp .bb_0.1
.bb_0.1:
bt ax, cx
xor dl, -91
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
xor eax, -117
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and sil, 69
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
cmovo dx, cx
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
add cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 48
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 93
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
xor sil, 63
adc al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and dil, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
