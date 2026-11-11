.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rsi, -115
adc ebx, 117
xor al, 59
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
btc ax, dx
btc bx, dx
cmovb si, bx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
sbb al, -62
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
add dl, cl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
inc edi
adc eax, -79
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
not cx
sub cl, cl
and rcx, -102
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
add dl, dl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
cmovb rdx, rsi
imul esi, ecx
xor ax, 28088
cmovle rdi, rax
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 18
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
not si
bts rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
