.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx di, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
xor esi, -112
cmovnle bx, dx
adc eax, -1127383570
sbb al, -52
adc ax, -22258
and al, 49
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
add bl, -49
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
xor al, 118
btc edx, 165
and al, bl
cmovnle rsi, rdi
cmovs eax, edx
xchg esi, eax
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
bts dx, cx
add cl, 35 # instrumentation
cmovnb rdx, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btr rsi, 20
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
cmovle rbx, rdx
adc al, -70
test cl, -52
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
test bl, cl
add cl, dl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
cmp rbx, -3
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
