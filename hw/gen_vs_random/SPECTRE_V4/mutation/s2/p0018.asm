.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle eax, edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmovz rcx, rdx
xor al, 29
and rbx, 69
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
add dil, 16
btc ax, dx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
adc bl, dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
inc edi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc ecx, -12
and sil, al
neg sil
cmovnbe rax, rcx
or dx, cx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
xor eax, -437098167
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
cmovle cx, bx
xor eax, -164167056
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
add dx, -90
adc ebx, 117
cmovnz di, dx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
sbb rsi, -115
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
