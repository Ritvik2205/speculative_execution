.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, 109
and bl, al
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
xor ebx, edi
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor si, si
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and sil, -84
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
mov rbx, rsi
add cl, -7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
test ebx, eax
mov dl, al
xchg rbx, rax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
adc al, -59
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
btc ecx, 233
adc al, 41
cmovle rdi, rsi
mov dl, dil
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 53
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
add bl, 69 # instrumentation
cmovnbe di, cx
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
cmovl di, cx
inc ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
adc cl, al
adc al, -86
add sil, 3
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 75
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and ax, dx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
