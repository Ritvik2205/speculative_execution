.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 16
cmovnl rdi, rcx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sub sil, bl
mov sil, sil
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 92
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
bt edx, ecx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
test al, sil
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
add cl, cl
cmovs rax, rcx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
sbb edx, 10
sbb dil, 96
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
sbb rcx, rbx
inc rsi
add cl, 122 # instrumentation
cmovz rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
sbb edx, 55
movsx rdx, di
neg cx
add dx, -90
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], cx
add cl, 8 # instrumentation
adc bl, sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
cmovnle dx, dx
add al, al
mov cl, cl
adc eax, -79
add al, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
