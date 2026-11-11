.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
adc edx, -125
xor al, -82
add dl, -7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
neg al
add bl, -101 # instrumentation
cmovz ebx, ebx
inc sil
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
bt ax, di
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
or eax, 143573881
cmovo cx, dx
and bl, cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
xor rax, 944027678
adc rbx, rcx
xor cl, -101
mul eax
adc bl, 127
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
mov bx, 27738
cmp bl, 12
and dl, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
cmovnbe edx, esi
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovnp rdi, rbx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
xor al, 55
mov esi, 1115061743
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and dl, 124
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
cmp ebx, -19
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 60
add cl, -123 # instrumentation
sbb cl, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
