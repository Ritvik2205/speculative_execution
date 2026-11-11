.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 19
sbb sil, cl
cmovs rdx, rbx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
cmp di, 62
mul rbx
xchg ax, bx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and ax, 35
movzx rbx, ax
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
adc al, 36
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
or sil, al
adc dil, 37
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 93
cmovnb eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
imul dl
add cl, -37 # instrumentation
adc esi, 85
and al, sil
cmovo ebx, edi
cmovnbe ax, cx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
adc dl, al
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
btc rcx, 32
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
sbb cl, -104
cmovz cx, cx
btc dx, 16
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dil, -10 # instrumentation
mov di, 98
cmovnbe bx, si
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
cmovz edi, ecx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 43
mul ax
add cl, 8 # instrumentation
adc bl, al
not dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
