.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, bl
movsx si, al
sbb sil, 24
imul eax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdi
cmovnb eax, edx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
imul rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add dl, dl
test cl, sil
inc eax
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 45
btr esi, 227
sub dl, bl
mov rdx, -3088288992777791879
adc rdx, rdi
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
or dx, 44
mul dil
xchg sil, cl
adc ecx, 114
xor ebx, 40
add cl, 122 # instrumentation
cmovz dx, cx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
movzx rdx, si
or eax, -646827727
adc cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovp esi, ecx
sbb dx, 2
xchg cl, cl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
add dil, -84
or dil, 89
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
cmovnle ax, di
mov sil, dl
test cl, cl
bts ax, 155
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
