.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
test cl, -31
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
test dil, -5
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
sbb bl, -79
cmovo cx, di
btc rsi, rdx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdx
test si, 2
sub bl, cl
cmp ecx, 45
test bl, cl
and rsi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 91
and cx, bx
sub dl, cl
cmovnbe eax, ecx
mul cl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
adc ecx, 114
inc rdi
sub bl, al
or cl, -55
movzx rax, di
add dil, 87 # instrumentation
cmovz ebx, edi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
cmovno rbx, rax
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 52
sub al, 26
and al, al
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
btc ebx, 41
mov sil, 53
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 12
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
cmp cl, sil
and eax, -1145483375
xor cl, -101
adc dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
