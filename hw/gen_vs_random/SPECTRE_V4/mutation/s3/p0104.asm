.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
add dx, -90
mul ax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
neg sil
xor eax, -437098167
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
cmovle cx, bx
xor eax, -437098167
and rbx, 69
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
sbb rsi, -115
adc ecx, -12
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and sil, al
adc ebx, 117
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
adc bl, dl
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
add dil, 16
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
xor al, 56
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
inc edi
cmovz rcx, rdx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
btc ax, dx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
cmovnz di, dx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
cmovnbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
cmovnle eax, edi
or dx, cx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
