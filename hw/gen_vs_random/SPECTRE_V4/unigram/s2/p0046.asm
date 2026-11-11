.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ecx, bl
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
sub dl, dl
imul rdi, rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add ax, 28666
mul ax
mov rbx, 9101099553822202722
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
cmp cl, cl
adc si, 73
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 60
imul edi, edx, 31
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 10
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 28
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
bt ax, 29
or bx, -111
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
neg dil
xchg rdx, rax
dec rcx
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
or cl, 78
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
add sil, 26
cmovb eax, ebx
or bx, cx
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 11
or bl, 76
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 44
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
imul bx, ax
add cl, -71 # instrumentation
adc cl, al
adc bl, 89
add rax, rsi
btc ax, dx
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and si, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
